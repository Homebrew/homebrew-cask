cask "lunar" do
  version "7.0.0b22"
  sha256 "fce2564ef961ee99435c35dda0bc8535f0ad744695e6bed3687fdfdf4f55368f"

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
    "~/Library/HTTPStorages/fyi.lunar.Lunar*",
    "~/Library/Preferences/fyi.lunar.Lunar.plist",
  ]
end
