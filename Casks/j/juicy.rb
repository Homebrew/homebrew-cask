cask "juicy" do
  version "1.5.5,2608032333"
  sha256 "0135b7329b18f6217c08890152b2f92e2a3a41ff405a543c9ea247aeff0b508f"

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
