cask "android-platform-tools" do
  os macos: "darwin", linux: "linux"

  version "37.0.3"
  sha256 arm:          "f89baeb829903ceaf3ac92a78a2d25152728049d6316ebeaaca06d716e64842d",
         intel:        "f89baeb829903ceaf3ac92a78a2d25152728049d6316ebeaaca06d716e64842d",
         x86_64_linux: "214548146cadb2ca3508143d8a1d4be4c59de5bb837253e3ede89ed74cf450d1"

  on_linux do
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

  zap :not_required
end
