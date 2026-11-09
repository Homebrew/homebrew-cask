cask "obelisk" do
  version "0.6.2"
  sha256 "02c36d9fe2273852abde439f5bbbc3620964717406287190a2bf1edb574cc7bf"

  url "https://github.com/Zagrios/Obelisk/releases/download/v#{version}/Obelisk-#{version}-arm64.dmg"
  name "Obelisk"
  desc "Game launcher for Steam, Epic Games and GOG libraries"
  homepage "https://getobelisk.app/"

  livecheck do
    url "https://github.com/Zagrios/Obelisk/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Obelisk.app"

  uninstall quit: "com.zagrios.obelisk"

  zap trash: [
    "~/Library/Application Support/com.zagrios.obelisk",
    "~/Library/Caches/com.zagrios.obelisk",
    "~/Library/HTTPStorages/com.zagrios.obelisk",
    "~/Library/HTTPStorages/com.zagrios.obelisk.binarycookies",
    "~/Library/Logs/Obelisk",
    "~/Library/Preferences/com.zagrios.obelisk.plist",
    "~/Library/Saved Application State/com.zagrios.obelisk.savedState",
    "~/Library/WebKit/com.zagrios.obelisk",
  ]
end
