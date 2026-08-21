cask "juicy" do
  version "1.5.6,2608211929"
  sha256 "99ea6893d651ffdfe7c9e7645b0ae1591eb84d8ad886e9ce520f1453c033c8e7"

  url "https://cdn.amore.computer/releases/io.sevendegrees.juicy.direct/#{version.csv.first}-#{version.csv.second}/Juicy.dmg",
      verified: "cdn.amore.computer/releases/io.sevendegrees.juicy.direct/"
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
