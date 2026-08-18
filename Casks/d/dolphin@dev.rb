cask "dolphin@dev" do
  version "2606-308,c8,4a"
  sha256 "9faf9c55ea4cd8ddbc696fba070e6b2f7b2d1877393a8dd688685f1a13a29654"

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
  depends_on macos: :big_sur

  app "Dolphin.app"

  uninstall quit: "org.dolphin-emu.dolphin"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
    "~/Library/Saved Application State/org.dolphin-emu.dolphin.savedState",
  ]
end
