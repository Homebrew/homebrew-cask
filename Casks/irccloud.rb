cask "irccloud" do
  version "0.15.0"
  sha256 "759f91f8ac67ed74119fde39a945c6a5cc4fb426e978910b7541a5c84b2df7ea"

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}.dmg"
  appcast "https://github.com/irccloud/irccloud-desktop/releases.atom"
  name "IRCCloud Desktop"
  homepage "https://github.com/irccloud/irccloud-desktop"

  app "IRCCloud.app"
end
