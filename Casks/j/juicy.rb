cask "juicy" do
  version "1.6.2,2610092203"
  sha256 "1a40a49b7d04661edfbefd6a6078bc5c486e9236e9c3f7b295f1b5dd3becdbea"

  url "https://cdn.amore.computer/releases/io.sevendegrees.juicy.direct/#{version.csv.first}-#{version.csv.second}/Juicy.dmg"
  name "Juicy"
  desc "Menu bar battery monitor with custom charge alerts and health tracking"
  homepage "https://getjuicy.app/"

  livecheck do
    url "https://releases.getjuicy.app/v1/apps/io.sevendegrees.juicy.direct/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Juicy.app"

  zap trash: [
    "~/Library/Application Support/Juicy",
    "~/Library/Caches/io.sevendegrees.juicy.direct",
    "~/Library/HTTPStorages/io.sevendegrees.juicy.direct",
    "~/Library/Preferences/io.sevendegrees.juicy.direct.plist",
    "~/Library/WebKit/io.sevendegrees.juicy.direct",
  ]
end
