cask "lunar" do
  version "7.0.0b32"
  sha256 "6be6a1751d21b68eb6fb4afee96e43fdf8197c37e7d5c57ad2d82a8f87ccf123"

  url "https://files.lunar.fyi/releases/Lunar-#{version}.dmg"
  name "Lunar"
  desc "Adaptive brightness for external displays"
  homepage "https://lunar.fyi/"

  livecheck do
    url "https://files.lunar.fyi/appcast2.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Lunar.app"

  uninstall quit: "fyi.lunar.Lunar"

  zap trash: [
    "~/Library/Application Support/fyi.lunar.Lunar",
    "~/Library/Application Support/Lunar",
    "~/Library/Caches/fyi.lunar.Lunar",
    "~/Library/Caches/Lunar",
    "~/Library/Caches/LunarProductIcon.png",
    "~/Library/HTTPStorages/fyi.lunar.Lunar*",
    "~/Library/Preferences/fyi.lunar.Lunar.plist",
  ]
end
