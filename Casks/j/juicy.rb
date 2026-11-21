cask "juicy" do
  version "1.6.3,2611212215"
  sha256 "5b68a6c74e28e81c74e4330eedabedd0c0b4ced235b93efe2e557318549128c6"

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
    "~/Library/Application Scripts/2BCW334S4D.io.sevendegrees.juicy",
    "~/Library/Application Scripts/io.sevendegrees.juicy.direct.JuicyWidgets",
    "~/Library/Application Support/Juicy",
    "~/Library/Caches/io.sevendegrees.juicy.direct",
    "~/Library/Containers/io.sevendegrees.juicy.direct.JuicyWidgets",
    "~/Library/Group Containers/2BCW334S4D.io.sevendegrees.juicy",
    "~/Library/HTTPStorages/io.sevendegrees.juicy.direct",
    "~/Library/Preferences/io.sevendegrees.juicy.direct.plist",
    "~/Library/WebKit/io.sevendegrees.juicy.direct",
  ]
end
