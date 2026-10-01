cask "switchy" do
  version "2.0,93"
  sha256 "22021d1e75b5ebeaa09c8f0083dd3f6c2865d5c72aff3b4e0c2b6df8bd28cc98"

  url "https://github.com/benhursenabathi/mangobuns/releases/download/switchy-v#{version.csv.first}-build#{version.csv.second}/Switchy-#{version.csv.first}.dmg"
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
