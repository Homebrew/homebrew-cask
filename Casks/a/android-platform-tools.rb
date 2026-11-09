cask "android-platform-tools" do
  os macos: "darwin", linux: "linux"

  version "37.0.2"
  sha256 arm:          "de86d62321ad38049d488fb1854c7b9a29f7e1b17e8dfb597c304b038cc37ae7",
         intel:        "de86d62321ad38049d488fb1854c7b9a29f7e1b17e8dfb597c304b038cc37ae7",
         x86_64_linux: "dfc80a84a6710e5674415d4b55ae599c01aa4961822f53097d747472f410f157"

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
