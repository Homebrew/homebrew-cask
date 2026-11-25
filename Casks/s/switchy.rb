cask "switchy" do
  version "2.0,95"
  sha256 "ea244d8bd92a1c516ca17fc091d48f9dbc83e6f1ff96768fb52cbaeb03707478"

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
    "~/Library/Application Support/Switchy",
    "~/Library/HTTPStorages/com.mangobuns.Switchy",
    "~/Library/Preferences/com.mangobuns.Switchy.plist",
  ]
end
