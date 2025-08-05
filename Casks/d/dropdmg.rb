cask "dropdmg" do
  version "3.6.9"
  sha256 "065b89f0fae9c05d95a259ac7210e5632f2cf14745f8ca61351074b894e75075"

  url "https://c-command.com/downloads/DropDMG-#{version}.dmg"
  name "DropDMG"
  desc "Create DMGs and other archives"
  homepage "https://c-command.com/dropdmg/"

  livecheck do
    url "https://c-command.com/versions.plist"
    strategy :xml do |xml|
      item = xml.elements["//key[text()='com.c-command.DropDMG']"]&.next_element
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text
      next if version.blank?

      version.strip
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DropDMG.app"

  zap trash: [
    "~/Library/Application Support/DropDMG",
    "~/Library/Automator/DropDMG.action",
    "~/Library/Automator/Expand Disk Image.action",
    "~/Library/Caches/com.c-command.DropDMG",
    "~/Library/HTTPStorages/com.c-command.DropDMG",
    "~/Library/Logs/DropDMG",
    "~/Library/Preferences/com.c-command.DropDMG.plist",
  ]
end
