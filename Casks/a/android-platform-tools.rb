cask "android-platform-tools" do
  os macos: "darwin", linux: "linux"

  version "36.0.2"
  sha256 arm:          "106a5d31fad8c1c0c5a180d06f5779767d129d7d5edbe629005c11a85eec5b4b",
         x86_64:       "106a5d31fad8c1c0c5a180d06f5779767d129d7d5edbe629005c11a85eec5b4b",
         x86_64_linux: "3afdea91441815ab41254193df0343d92c1b1c0d0237165c3a345c8af8891c31",
         arm64_linux:  "3afdea91441815ab41254193df0343d92c1b1c0d0237165c3a345c8af8891c31"

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
