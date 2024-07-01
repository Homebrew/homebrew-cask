cask "spamsieve" do
  version "3.0.5"
  sha256 "d04b0b6563432c73d3cc396dd57509d653eabcf6df0391b00a5e1a94f75dca42"

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  name "SpamSieve"
  desc "Spam filtering extension for e-mail clients"
  homepage "https://c-command.com/spamsieve/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/SpamSieve[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true

  app "SpamSieve.app"

  zap trash: [
    "~/Library/Application Support/SpamSieve",
    "~/Library/Caches/com.apple.helpd/Generated/SpamSieve Help*",
    "~/Library/Caches/com.c-command.SpamSieve",
    "~/Library/HTTPStorages/com.c-command.SpamSieve",
    "~/Library/LaunchAgents/com.c-command.SpamSieve.LaunchAgent.plist",
    "~/Library/Logs/SpamSieve",
    "~/Library/Preferences/com.c-command.SpamSieve.plist",
    "~/Library/Saved Application State/com.c-command.SpamSieve.savedState",
  ]
end
