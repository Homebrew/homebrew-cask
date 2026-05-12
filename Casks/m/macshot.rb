cask "macshot" do
  version "4.1.0"
  sha256 "195c8903b1d0386a40610533edb91ee35a2b65dd34aa36b586d5efc621b662bf"

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
