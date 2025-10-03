cask "spamsieve" do
  version "3.2.1"
  sha256 "48732a0359866778b211c2345db4ea9ae2eb056412456ac844097d926fec41f0"

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  name "SpamSieve"
  desc "Spam filtering extension for e-mail clients"
  homepage "https://c-command.com/spamsieve/"

  livecheck do
    url "https://c-command.com/versions.plist"
    strategy :xml do |xml|
      item = xml.elements["//key[text()='com.c-command.SpamSieve']"]&.next_element
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text
      next if version.blank?

      version.strip
    end
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
