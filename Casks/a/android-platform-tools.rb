cask "android-platform-tools" do
  os macos: "darwin", linux: "linux"

  version "35.0.2"
  sha256 arm:          "1820078db90bf21628d257ff052528af1c61bb48f754b3555648f5652fa35d78",
         x86_64:       "1820078db90bf21628d257ff052528af1c61bb48f754b3555648f5652fa35d78",
         x86_64_linux: "acfdcccb123a8718c46c46c059b2f621140194e5ec1ac9d81715be3d6ab6cd0a",
         arm64_linux:  "acfdcccb123a8718c46c46c059b2f621140194e5ec1ac9d81715be3d6ab6cd0a"

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
