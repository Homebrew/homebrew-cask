cask "clawd-on-desk" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "1.4.0"
  sha256 arm:          "124be72a4018a5844f21b9b8cdb6409da23e187651a8a0fc9ef9e6e1490caf75",
         intel:        "c83964247503114436aa5acec7ab53782564bd862e2bc361e4d3f5c0375a6be8",
         x86_64_linux: "75183264dffa21a46e52f6443bbe1a95c07e0f6bd245c0b9bbcc284deb013591"

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
