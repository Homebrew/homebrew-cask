cask 'android-platform-tools' do
  version '29.0.4'
  sha256 '0138d738eeb96a48a0b04894e502d4b4ef802cb8cf446a61838fb7c2a386a532'

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
