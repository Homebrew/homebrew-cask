cask "keysmith" do
  version "1.18.1,94"
  sha256 "687721e156990564c0864aa84980f29314a8e703f259cfebd9859d9b6dd8fd26"

  url "https://keysmith.app/versions/Keysmith-#{version.csv.first}.dmg"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  livecheck do
    url "https://www.keysmith.app/versions/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "Keysmith.app"

  zap trash: [
    "~/Library/Caches/app.keysmith.Keysmith",
    "~/Library/Keysmith",
    "~/Library/Preferences/app.keysmith.Keysmith.plist",
  ]
end
