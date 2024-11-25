cask "spamsieve" do
  version "3.1"
  sha256 "5163317c4c0c0a629ca7bc28177fdac8e26fbbd2babc08a4f307919c384a454e"

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
  depends_on macos: ">= :high_sierra"

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
