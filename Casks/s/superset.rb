cask "superset" do
  arch arm: "-arm64"
  os macos: "Superset", linux: "superset"
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "1.30.0"
  sha256 arm:          "5d81beb386dddc28b5a45fe69736b598e30fc1eb6626f03c78d5899e4c898565",
         intel:        "a4862c4594fe1af55f5ebec10fe98458a0a512d34faf7ecd38a61d188c1b74b1",
         x86_64_linux: "8cce6c6beacd23a90e04f5ebd32f78c04a17fd81fe5373a3b0ff4ae1eabd8a2c"

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
