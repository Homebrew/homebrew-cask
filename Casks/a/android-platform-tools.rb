cask "android-platform-tools" do
  os macos: "darwin", linux: "linux"

  version "37.0.1"

  on_macos do
    sha256 "ee39ad5967e95c2a07f04dbcbde96b1a0c916ba376096db5d2f498b7727a5d1d"
  end
  on_linux do
    sha256 "d230f13842f60f782a8645f9c813f8f845bf36089ea7289f28c48f17979313f1"

    depends_on arch: :x86_64
  end

  url "https://dl.google.com/android/repository/platform-tools_r#{version}-#{os}.zip"
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
