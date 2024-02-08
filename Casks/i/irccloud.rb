cask "irccloud" do
  version "0.16.0"
  sha256 "e942432cc457ce275960f6e5f120cc7be914ee06dc45fc88f9566a9aae251d79"

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}-universal.dmg"
  name "IRCCloud Desktop"
  desc "IRC client"
  homepage "https://github.com/irccloud/irccloud-desktop"

  deprecate! date: "2023-12-17", because: :discontinued

  app "IRCCloud.app"

  zap trash: [
    "~/Library/Application Support/IRCCloud",
    "~/Library/Caches/com.irccloud.desktop",
    "~/Library/Caches/com.irccloud.desktop.ShipIt",
    "~/Library/Logs/IRCCloud",
    "~/Library/Preferences/com.irccloud.desktop.plist",
    "~/Library/Saved Application State/com.irccloud.desktop.savedState",
  ]
end
