cask "dolphin@dev" do
  version "2503a-454,39,70"
  sha256 "f614a0571877439a0ed7c82c4b23e3e646fccc7f65af31fbcf11d949643327d0"

  url "https://dl.dolphin-emu.org/builds/#{version.csv.second}/#{version.csv.third}/dolphin-master-#{version.csv.first}-universal.dmg"
  name "Dolphin Dev"
  desc "Emulator to play GameCube and Wii games"
  homepage "https://dolphin-emu.org/"

  livecheck do
    url "https://dolphin-emu.org/download/"
    regex(%r{href=.*?/builds/([^/]+?)/([^/]+?)/dolphin[._-]master[._-]v?(\d+[a-z]?-\d+)-universal\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: [
    "dolphin",
    "dolphin@beta",
  ]
  depends_on macos: ">= :big_sur"

  app "Dolphin.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
  ]
end
