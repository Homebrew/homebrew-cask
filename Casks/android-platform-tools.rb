cask "android-platform-tools" do
  version "30.0.5,eabcd8b4b7ab518c6af9c941af8494072f17ec4b"
  sha256 "e5780bad71a53cf9d693e1053a0748f49e4a67cc1f71d16a94ab4c943af3345f"

  url "https://dl.google.com/android/repository/#{version.after_comma}.platform-tools_r#{version.before_comma}-darwin.zip",
      verified: "google.com/android/repository/"
  name "Android SDK Platform-Tools"
  desc "Android SDK component"
  homepage "https://developer.android.com/studio/releases/platform-tools.html"

  binary "#{staged_path}/platform-tools/adb"
  binary "#{staged_path}/platform-tools/dmtracedump"
  binary "#{staged_path}/platform-tools/etc1tool"
  binary "#{staged_path}/platform-tools/fastboot"
  binary "#{staged_path}/platform-tools/hprof-conv"
  binary "#{staged_path}/platform-tools/mke2fs"
end
