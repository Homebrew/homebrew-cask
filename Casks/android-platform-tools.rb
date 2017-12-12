cask 'android-platform-tools' do
  version '27.0.0'
  sha256 '93720ae10382d54cc31d0d97f1e016ae91e1e1eb68d38ac15a3c396adb0da1c7'

  # google.com/android/repository/platform-tools was verified as official when first introduced to the cask
  url "https://dl.google.com/android/repository/platform-tools_r#{version}-darwin.zip"
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
