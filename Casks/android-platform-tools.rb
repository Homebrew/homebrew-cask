cask 'android-platform-tools' do
  version '28.0.1'
  sha256 '3bc833ae3f4bd831af03811f2d1be540c2eb2eb9a17de9398b0a06dc5af6fa84'

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
