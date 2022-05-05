cask "android-platform-tools" do
  version "33.0.1"
  sha256 "7b2acfb3ae02aff2cd679d9df9c125d46543d0db2e95b6b249c25ec6160fddf0"

  url "https://dl.google.com/android/repository/platform-tools_r#{version}-darwin.zip",
      verified: "google.com/android/repository/"
  name "Android SDK Platform-Tools"
  desc "Android SDK component"
  homepage "https://developer.android.com/studio/releases/platform-tools"

  livecheck do
    url "https://dl.google.com/android/repository/platform-tools-latest-darwin.zip"
    strategy :header_match
  end

  binary "#{staged_path}/platform-tools/adb"
  binary "#{staged_path}/platform-tools/dmtracedump"
  binary "#{staged_path}/platform-tools/e2fsdroid"
  binary "#{staged_path}/platform-tools/etc1tool"
  binary "#{staged_path}/platform-tools/fastboot"
  binary "#{staged_path}/platform-tools/hprof-conv"
  binary "#{staged_path}/platform-tools/make_f2fs"
  binary "#{staged_path}/platform-tools/make_f2fs_casefold"
  binary "#{staged_path}/platform-tools/mke2fs"
  binary "#{staged_path}/platform-tools/sload_f2fs"
end
