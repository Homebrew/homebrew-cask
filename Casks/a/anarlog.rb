cask "anarlog" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.4.30"
  sha256 arm:          "6fc6b87c1a9c3b4b51993c2013ca68521ce8c0906836ff07255d62c0fb743759",
         intel:        "f32214c06c64e508472d942e63a61c74a6688f95d4f671f0f39b10151819df1e",
         arm64_linux:  "9cd4a02966834f84249a7962ad9851a0356bbbbc2aac979b54004c9c59ad3361",
         x86_64_linux: "61e4ff7ccd79bb0673aff8b6ac863ffdd4952a65ce443244897ddbe30482a4cd"

  on_macos do
    auto_updates true
    depends_on macos: :sequoia

    app "Anarlog.app"

    uninstall quit: "com.hyprnote.stable"

    zap trash: [
      "~/.local/bin/.anarlog-cli",
      "~/.local/bin/anarlog",
      "~/Library/Application Support/anarlog",
      "~/Library/Application Support/com.hyprnote.stable",
      "~/Library/Caches/com.hyprnote.stable",
      "~/Library/HTTPStorages/com.hyprnote.stable",
      "~/Library/Logs/com.hyprnote.stable",
      "~/Library/Preferences/com.hyprnote.stable.plist",
      "~/Library/Saved Application State/com.hyprnote.stable.savedState",
      "~/Library/WebKit/com.hyprnote.stable",
    ]
  end
  on_linux do
    app_image "anarlog-linux-#{arch}.AppImage", target: "Anarlog.AppImage"
  end

  url "https://github.com/fastrepl/anarlog/releases/download/desktop_v#{version}/anarlog-#{os}-#{arch}.#{url_end}"
  name "Anarlog"
  desc "AI notepad for meetings"
  homepage "https://anarlog.so/"

  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
