cask "obelisk" do
  version "0.6.4"
  sha256 "1684f0cdea69a38770e70a934f75054454d9bd16f79571e0074292e11dec330c"

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
