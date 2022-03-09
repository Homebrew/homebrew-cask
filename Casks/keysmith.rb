cask "keysmith" do
  version "1.18.0,93"
  sha256 "1c49037d93448228bed33304a89bdd0a530112042f390860ee8a6a10a715aa5f"

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
