cask "macshot" do
  version "4.1.1"
  sha256 "89e4822807ac9b66c88370f4791bf665e0c535535db87f896fcc7c8decd3da63"

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
  depends_on macos: :monterey

  app "macshot.app"

  uninstall quit: "com.sw33tlie.macshot.macshot"

  zap trash: [
    "~/Library/Application Scripts/com.sw33tlie.macshot.macshot",
    "~/Library/Containers/com.sw33tlie.macshot.macshot",
  ]
end
