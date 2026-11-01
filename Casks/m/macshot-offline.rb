cask "macshot-offline" do
  version "4.4.0"
  sha256 "fd845b5e691c9094cf012d466bd4754350d6df6e0142098172c04c1ca5d951bc"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/MacShot-Offline.dmg"
  name "macshot Offline"
  desc "Screenshot and screen recording tool without upload integrations"
  homepage "https://github.com/sw33tLie/macshot"

  livecheck do
    url "https://raw.githubusercontent.com/sw33tLie/macshot/main/appcast-offline.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "macshot Offline.app"

  uninstall quit: "com.sw33tlie.macshot.offline"

  zap trash: [
    "~/Library/Application Scripts/com.sw33tlie.macshot.offline",
    "~/Library/Containers/com.sw33tlie.macshot.offline",
  ]
end
