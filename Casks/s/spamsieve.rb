cask "spamsieve" do
  version "3.1"
  sha256 "5163317c4c0c0a629ca7bc28177fdac8e26fbbd2babc08a4f307919c384a454e"

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
