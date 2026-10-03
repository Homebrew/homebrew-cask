cask "superset" do
  arch arm: "-arm64"
  os macos: "Superset", linux: "superset"
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "1.35.0"
  sha256 arm:          "bc331936e5e71ddf44940eb01ea7ebbd7aac334d548142ec5189125b0acbe630",
         intel:        "23bfff521133a812cee4e1fa76720b32d1614e44bb926fb8af43ce0b7b1b953c",
         x86_64_linux: "2b8c0399f24bf8f23c30c7192c01b15b22db96b550b32788a0f20f11ae9d9909"

  on_macos do
    depends_on macos: :monterey

    app "Superset.app"

    uninstall quit: "com.superset.desktop"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.superset.desktop.sfl*",
      "~/Library/Application Support/Superset",
      "~/Library/Caches/com.superset.desktop",
      "~/Library/HTTPStorages/com.superset.desktop",
      "~/Library/Logs/Superset",
      "~/Library/Preferences/com.superset.desktop.plist",
      "~/Library/Saved Application State/com.superset.desktop.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "superset-#{version}-x86_64.AppImage", target: "Superset.AppImage"
  end

  url "https://github.com/superset-sh/superset/releases/download/desktop-v#{version}/#{os}-#{version}#{arch}#{url_end}"
  name "Superset"
  desc "Terminal for orchestrating agents"
  homepage "https://superset.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
