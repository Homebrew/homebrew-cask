cask "dolphin" do
  version "2609b"
  sha256 "d7a3464ae2b71106e9bce9f53dfdbf5a6a3df2637ee8f3f78234f77653eb0a64"

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

  uninstall quit: "org.dolphin-emu.dolphin"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
    "~/Library/Saved Application State/org.dolphin-emu.dolphin.savedState",
  ]
end
