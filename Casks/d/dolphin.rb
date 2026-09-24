cask "dolphin" do
  version "2609"
  sha256 "b8910a6f8710cbe93b916f5b3867a46e67e49aa8272657d282d4accae359cd6b"

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
  depends_on :macos

  app "Dolphin.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
    "~/Library/Saved Application State/org.dolphin-emu.dolphin.savedState",
  ]
end
