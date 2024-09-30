cask "dolphin@beta" do
  version "2409"
  sha256 "17917940d84bcf1abc46e85d6d4cb960f1fd7e017dd6502f9c505ba3135def97"

  url "https://dl.dolphin-emu.org/releases/#{version}/dolphin-#{version}-universal.dmg"
  name "Dolphin Beta"
  desc "Emulator to play GameCube and Wii games"
  homepage "https://dolphin-emu.org/"

  livecheck do
    url "https://dolphin-emu.org/update/latest/beta/"
    strategy :json do |json|
      json["shortrev"]
    end
  end

  conflicts_with cask: [
    "dolphin",
    "dolphin@dev",
  ]
  depends_on macos: ">= :catalina"

  app "Dolphin.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
  ]
end
