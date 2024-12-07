cask "eclipse-php" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.34.0,2024-12"
  sha256 arm:   "c9d9876ae1b333e1c5ebd10c78477c171f6d6b79ba8bca233bc5ba7ba1179cc2",
         intel: "8336e2d952ec09eb3721e7e93ac4fce50bb5fdb939f638256d40ff1483f48ec0"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-php-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for PHP Developers"
  desc "Eclipse IDE for PHP developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse PHP.app"

  zap trash: [
    "~/Library/Preferences/org.eclipse.platform.ide.plist",
    "~/Library/Saved Application State/org.eclipse.platform.ide.savedState",
  ]
end
