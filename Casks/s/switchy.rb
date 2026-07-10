cask "switchy" do
  version "1.1.4,70"
  sha256 "de151649e8c0d3fa52f5f2b31db168b7d67325e3ac40109d25f8db9f5e4089b2"

  url "https://mangobuns.com/switchy/downloads/Switchy-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Switchy"
  desc "Switch Magic Keyboard, Trackpad and Mouse between Macs"
  homepage "https://mangobuns.com/switchy/"

  livecheck do
    url "https://mangobuns.com/switchy/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Switchy.app"

  zap trash: [
    "~/Library/HTTPStorages/com.mangobuns.Switchy",
    "~/Library/Preferences/com.mangobuns.Switchy.plist",
  ]
end
