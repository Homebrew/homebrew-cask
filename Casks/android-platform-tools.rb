cask 'android-platform-tools' do
  version :latest
  sha256 :no_check

  # google.com/android/repository/platform-tools was verified as official when first introduced to the cask
  url 'https://dl.google.com/android/repository/platform-tools-latest-darwin.zip'
  name 'Android SDK Platform-Tools'
  homepage 'https://developer.android.com/studio/releases/platform-tools.html'

  conflicts_with cask: 'android-sdk'

  binary "#{staged_path}/platform-tools/adb"
  binary "#{staged_path}/platform-tools/dmtracedump"
  binary "#{staged_path}/platform-tools/etc1tool"
  binary "#{staged_path}/platform-tools/fastboot"
  binary "#{staged_path}/platform-tools/hprof-conv"
  binary "#{staged_path}/platform-tools/sqlite3"
end
