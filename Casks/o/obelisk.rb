cask "obelisk" do
  version "0.6.3"
  sha256 "fee13c2ce70e0318d3bfff927a2fc9975e8defe8b67b90890953aad060d44d3f"

  url "https://github.com/Zagrios/Obelisk/releases/download/v#{version}/Obelisk-#{version}-arm64.dmg"
  name "Obelisk"
  desc "Game launcher for Steam, Epic Games and GOG libraries"
  homepage "https://github.com/Zagrios/Obelisk"

  livecheck do
    url "https://github.com/Zagrios/Obelisk/releases/latest/download/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
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
