cask "dolphin@dev" do
  version "2409-320,b0,50"
  sha256 "4dc21c10ebe5f167c8e431e33afa221ac9ac46b2cf33656f060137ac7bf5647a"

  url "https://dl.dolphin-emu.org/builds/#{version.csv.second}/#{version.csv.third}/dolphin-master-#{version.csv.first}-universal.dmg"
  name "Dolphin Dev"
  desc "Emulator to play GameCube and Wii games"
  homepage "https://dolphin-emu.org/"

  livecheck do
    url "https://dolphin-emu.org/download/"
    regex(%r{href=.*?/builds/([^/]+?)/([^/]+?)/dolphin[._-]master[._-]v?(\d+(?:[.-]\d+)+)-universal\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: [
    "dolphin",
    "dolphin@beta",
  ]
  depends_on macos: ">= :catalina"

  app "Dolphin.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
  ]
end
