cask "lunar" do
  version "7.0.0b30"
  sha256 "c00a067c3a9d1fb32ee3ba63f6398a7133ad10f3c390906a5d05905530f72e7a"

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
