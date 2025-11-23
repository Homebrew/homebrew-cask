cask "eclipse-php" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.37.0,2025-09"
  sha256 arm:   "64dd090aa8bbe91db273de05015a38358db8b2aeeb013d9755c5bcd97f7e1409",
         intel: "57b1b2b37aeb71c3b1def007ea0a697b4f20b0e9408c328d150ebb5149448888"

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
