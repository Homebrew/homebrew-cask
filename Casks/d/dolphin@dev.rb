cask "dolphin@dev" do
  version "2412-31,25,d6"
  sha256 "e9a961dd78df250c281b28f90bc39a49b37ce6b82551a32cf18b23c15ab644eb"

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
