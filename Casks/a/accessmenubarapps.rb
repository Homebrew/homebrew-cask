cask "accessmenubarapps" do
  version "2.6.1"
  sha256 "fe8a08d721af4b9e5e71bb71f3b876169fecde8219b53c01938861c2781fb16c"

  url "https://www.ortisoft.de/resources/AccessMenuBarApps#{version}.zip"
  name "AccessMenuBarApps"
  desc "Instant access for menubar apps"
  homepage "https://www.ortisoft.de/accessmenubarapps/"

  livecheck do
    url "https://www.ortisoft.de/accessmenubarapps/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "AccessMenuBarApps#{version}/AccessMenuBarApps.app"

  uninstall quit: "de.ortisoft.AccessMenuBarApps"

  zap trash: [
    "~/Library/Caches/de.ortisoft.AccessMenuBarApps",
    "~/Library/HTTPStorages/de.ortisoft.AccessMenubarApps",
    "~/Library/Preferences/de.ortisoft.AccessMenuBarApps.plist",
  ]

  caveats do
    requires_rosetta
  end
end
