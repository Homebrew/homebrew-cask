cask "macshot-offline" do
  version "4.3.0"
  sha256 "6b2e735d3812ac136c5c6a2f130550c29aed0e37179fadf8776ed4ae2fc7c890"

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
