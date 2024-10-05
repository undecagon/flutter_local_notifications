/// Helper method for validating notification IDs.
///
/// Ensures IDs are valid 32-bit integers.
void validateId(dynamic id) {
  ArgumentError.checkNotNull(id, 'id');
}

/// Helper method for validation repeat interval duration used passed
/// to periodicallyShowWithDuration().
///
/// Ensures the duration is at least one minute.
void validateRepeatDurationInterval(Duration repeatDurationInterval) {
  ArgumentError.checkNotNull(repeatDurationInterval, 'repeatDurationInterval');
  if (repeatDurationInterval.inMinutes < 1) {
    throw ArgumentError.value(repeatDurationInterval, 'repeatDurationInterval',
        'must be at one minute or more');
  }
}
