cask "clawd-on-desk" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "1.5.0"
  sha256 arm:          "c2376035249e752a1b4561e7f2c769930df71c772f67982cfde3f646f912338a",
         intel:        "4c0b3abbbda9aaa6f4e1dcf9b1caef740e70fdca83fbd57579264c7c18826752",
         x86_64_linux: "980924177d8838af170e1be11e0563c39c3ece637c0c7bb35a8fe830ebbec99f"

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
