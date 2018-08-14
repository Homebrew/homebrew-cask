cask 'android-platform-tools' do
  version '28.0.0'
  sha256 '1d5ecc7370b3423ce428ae14e295dc2480f548f4a861b6770ee7835ad98c3d92'

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
