cask "accessmenubarapps" do
  version "2.6.1,15"
  sha256 "fe8a08d721af4b9e5e71bb71f3b876169fecde8219b53c01938861c2781fb16c"

  url "https://www.ortisoft.de/resources/AccessMenuBarApps#{version.csv.first}.zip"
  name "AccessMenuBarApps"
  desc "Instant access for menubar apps"
  homepage "https://www.ortisoft.de/accessmenubarapps/"

  livecheck do
    url "https://www.ortisoft.de/accessmenubarapps/profileInfo.php"
    strategy :sparkle
  end

  app "AccessMenuBarApps#{version.csv.first}/AccessMenuBarApps.app"

  uninstall quit: "de.ortisoft.AccessMenuBarApps"

  zap trash: [
    "~/Library/Caches/de.ortisoft.AccessMenuBarApps",
    "~/Library/Preferences/de.ortisoft.AccessMenuBarApps.plist",
  ]
end
