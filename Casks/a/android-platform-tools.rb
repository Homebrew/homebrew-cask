cask "android-platform-tools" do
  os macos: "darwin", linux: "linux"

  version "37.0.1"
  sha256 arm:          "7d009f4fb1a70ecaa52937ef4d68f5180c9578e9502fb985f000b50e01b4c9e2",
         x86_64:       "7d009f4fb1a70ecaa52937ef4d68f5180c9578e9502fb985f000b50e01b4c9e2",
         x86_64_linux: "d230f13842f60f782a8645f9c813f8f845bf36089ea7289f28c48f17979313f1",
         arm64_linux:  "d230f13842f60f782a8645f9c813f8f845bf36089ea7289f28c48f17979313f1"

  url "https://dl.google.com/android/repository/platform-tools_r#{version}-#{os}.zip",
      verified: "google.com/android/repository/"
  name "Android SDK Platform-Tools"
  desc "Android SDK component"
  homepage "https://developer.android.com/tools/releases/platform-tools"

  livecheck do
    url :homepage
    regex(/data-text=["']?[^"' >]*?v?(\d+(?:\.\d+)+)["'> (]/i)
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
