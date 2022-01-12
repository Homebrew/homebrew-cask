cask "keysmith" do
  version "1.17.1,92"
  sha256 "ae6c3d7fdc71ac8f36bdc595e658103e446dcbdc90dde2b819f14fb18a280415"

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
