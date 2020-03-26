cask 'android-platform-tools' do
  version '29.0.6'
  sha256 '17cb7642a5b34beda7fc0ef8eeb7dd8664f980c14736fd129c7b2dc0f2407c98'

  # google.com/android/repository/platform-tools was verified as official when first introduced to the cask
  url "https://dl.google.com/android/repository/platform-tools_r#{version}-darwin.zip"
  name 'Android SDK Platform-Tools'
  homepage 'https://developer.android.com/studio/releases/platform-tools.html'

  binary "#{staged_path}/platform-tools/adb"
  binary "#{staged_path}/platform-tools/dmtracedump"
  binary "#{staged_path}/platform-tools/etc1tool"
  binary "#{staged_path}/platform-tools/fastboot"
  binary "#{staged_path}/platform-tools/hprof-conv"
  binary "#{staged_path}/platform-tools/mke2fs"
end
