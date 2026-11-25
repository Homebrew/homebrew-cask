cask "clawd-on-desk" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "1.7.0"
  sha256 arm:          "52260c3eb0788aca953d9fc17ce2c65b04bc6d24ec59e3c6738d49fd90dce959",
         intel:        "93d24ed97b9a8444ba84c16bf444f29b951a91db2001c5f83e50a025ac3c038d",
         x86_64_linux: "3520477fd509966d6cda3ed020cce2efa3d0a38ada42586c3df7990358e42183"

  on_macos do
    depends_on macos: :monterey

    app "Clawd on Desk.app"

    zap trash: [
      "~/Library/Application Support/clawd-on-desk",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.clawd.on-desk.sfl*",
      "~/Library/Caches/com.clawd.on-desk",
      "~/Library/HTTPStorages/com.clawd.on-desk",
      "~/Library/Logs/clawd-on-desk",
      "~/Library/Preferences/com.clawd.on-desk.plist",
      "~/Library/Saved Application State/com.clawd.on-desk.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Clawd-on-Desk-#{version}-#{arch}.AppImage", target: "Clawd on Desk.AppImage"

    zap trash: [
      "~/.clawd",
      "~/.config/clawd-on-desk",
    ]
  end

  url "https://github.com/rullerzhou-afk/clawd-on-desk/releases/download/v#{version}/Clawd-on-Desk-#{version}-#{arch}.#{os}"
  name "Clawd on Desk"
  desc "Desktop pet that reacts to AI coding agents"
  homepage "https://github.com/rullerzhou-afk/clawd-on-desk"

  livecheck do
    url :url
    strategy :github_latest
  end
end
