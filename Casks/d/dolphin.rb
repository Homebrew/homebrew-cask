cask "dolphin" do
  version "2609a"
  sha256 "9a810043538f21b53cf8f8f747b1672df74895d3d6eb30940d96042823f20ecb"

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
