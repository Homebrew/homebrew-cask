cask "dolphin" do
  version "2506"
  sha256 "c0c1063eab641185eecce84baa1bb74e000af039cfd318b78fa10a4c678ea092"

  url "https://dl.dolphin-emu.org/releases/#{version}/dolphin-#{version}-universal.dmg"
  name "Dolphin"
  desc "Emulator to play GameCube and Wii games"
  homepage "https://dolphin-emu.org/"

  livecheck do
    url "https://dolphin-emu.org/update/latest/beta/"
    strategy :json do |json|
      json["shortrev"]
    end
  end

  auto_updates true
  conflicts_with cask: "dolphin@dev"
  depends_on macos: ">= :catalina"

  app "Dolphin.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
    "~/Library/Saved Application State/org.dolphin-emu.dolphin.savedState",
  ]
end
