cask "macshot" do
  version "4.0.4"
  sha256 "3a25a3d64cf0b462067f1071a4d0d845c3c970e7f11638e3e7f1a5fa7a0dd23f"

  url "https://github.com/sw33tLie/macshot/releases/download/v#{version}/MacShot.dmg"
  name "macshot"
  desc "Screenshot and screen recording tool"
  homepage "https://github.com/sw33tLie/macshot"

  livecheck do
    url "https://raw.githubusercontent.com/sw33tLie/macshot/main/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "macshot.app"

  uninstall quit: "com.sw33tlie.macshot.macshot"

  zap trash: [
    "~/Library/Application Scripts/com.sw33tlie.macshot.macshot",
    "~/Library/Containers/com.sw33tlie.macshot.macshot",
  ]
end
