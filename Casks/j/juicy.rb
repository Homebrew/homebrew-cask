cask "juicy" do
  version "1.5.2,2606251712"
  sha256 "98319db8a2f9d0f9c097d4ebc41b52ee2c7610fc9b35700f013a1a0b7e49e2ae"

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
