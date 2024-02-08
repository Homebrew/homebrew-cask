cask "android-platform-tools" do
  version "34.0.5"
  sha256 "b2c9757744a9d01fcc616b893ac6236233caf1bdf2ef384d73371ab68bfc4a43"

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
  binary "#{staged_path}/platform-tools/etc1tool"
  binary "#{staged_path}/platform-tools/fastboot"
  binary "#{staged_path}/platform-tools/hprof-conv"
  binary "#{staged_path}/platform-tools/make_f2fs"
  binary "#{staged_path}/platform-tools/make_f2fs_casefold"
  binary "#{staged_path}/platform-tools/mke2fs"

  # No zap stanza required
end
