cask "dolphin@dev" do
  version "2609-173,59,49"
  sha256 "fee1c37b65da9937ab413915d930f5ce6bb696576f0627b7cc3878a75b374c72"

  url "https://dl.dolphin-emu.org/builds/#{version.csv.second}/#{version.csv.third}/dolphin-master-#{version.csv.first}-universal.dmg"
  name "Dolphin Dev"
  desc "Emulator to play GameCube and Wii games"
  homepage "https://dolphin-emu.org/"

  livecheck do
    url "https://dolphin-emu.org/update/latest/dev/"
    regex(%r{/builds/([^/]+?)/([^/]+?)/dolphin.*?\.dmg}i)
    strategy :json do |json, regex|
      json["artifacts"]&.map do |artifact|
        match = artifact["url"]&.match(regex)
        next if match.blank?

        "#{json["shortrev"]},#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  conflicts_with cask: "dolphin"
  depends_on :macos

  app "Dolphin.app"

  uninstall quit: "org.dolphin-emu.dolphin"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
    "~/Library/Saved Application State/org.dolphin-emu.dolphin.savedState",
  ]
end
