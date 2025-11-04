cask "dolphin@dev" do
  version "2509-302,fe,f9"
  sha256 "3b99aa544ccf3daba6ace774e2efc5f7cc7c4606fd51f4f7bbe27f3b1e39ecc0"

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
  depends_on macos: ">= :big_sur"

  app "Dolphin.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
    "~/Library/Saved Application State/org.dolphin-emu.dolphin.savedState",
  ]
end
