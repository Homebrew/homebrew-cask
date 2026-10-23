cask "lunar" do
  version "6.11.2"
  sha256 "1a31f8955d152cd22e173c18f577cb3a995fcb0213807a1e481f841bb9194ee8"

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
  depends_on macos: :monterey

  app "Lunar.app"

  uninstall quit: "fyi.lunar.Lunar"

  zap trash: [
    "~/Library/Application Support/fyi.lunar.Lunar",
    "~/Library/Application Support/Lunar",
    "~/Library/Caches/fyi.lunar.Lunar",
    "~/Library/Caches/Lunar",
    "~/Library/HTTPStorages/fyi.lunar.Lunar*",
    "~/Library/Preferences/fyi.lunar.Lunar.plist",
  ]
end
