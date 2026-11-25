cask "caldera-amp" do
  version "1.1.1"
  sha256 "5b1b2d1760c2ba346e87e6d08ca2d63a93aa8a5a8f9315e5e7349024de9adeb8"

  url "https://releases.caldera.homes/music/amp/macos/v#{version}/CalderaAmp-#{version}.dmg"
  name "Caldera Amp"
  desc "Headless player for Plex music servers"
  homepage "https://caldera.homes/music/amp/"

  livecheck do
    url "https://releases.caldera.homes/music/amp/macos/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Caldera Amp.app"

  zap trash: [
    "~/Library/Application Support/Caldera Amp",
    "~/Library/Caches/com.nextamp.CalderaAmp",
    "~/Library/HTTPStorages/com.nextamp.CalderaAmp",
    "~/Library/Preferences/com.nextamp.CalderaAmp.plist",
    "~/Library/WebKit/com.nextamp.CalderaAmp",
  ]
end
