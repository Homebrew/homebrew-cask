cask "android-platform-tools" do
  version "30.0.0"
  sha256 "74f3fd31032163c9d83383c266fcecf35a22b86986a7949572737b1aaf91715b"

  # google.com/android/repository/ was verified as official when first introduced to the cask
  url "https://dl.google.com/android/repository/platform-tools_r#{version}-darwin.zip"
  name "Android SDK Platform-Tools"
  homepage "https://developer.android.com/studio/releases/platform-tools.html"

  binary "#{staged_path}/platform-tools/adb"
  binary "#{staged_path}/platform-tools/dmtracedump"
  binary "#{staged_path}/platform-tools/etc1tool"
  binary "#{staged_path}/platform-tools/fastboot"
  binary "#{staged_path}/platform-tools/hprof-conv"
  binary "#{staged_path}/platform-tools/mke2fs"
end
