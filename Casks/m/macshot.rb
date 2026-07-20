cask "macshot" do
  version "4.2.1"
  sha256 "13a2001d975d42a90c57fb9a3fdb54ffc1c26259fde07e48b86fce9e49a2e66d"

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
