cask "eclipse-php" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.33.0,2024-09"
  sha256 arm:   "550df37fe03b0aa2b8d302bc2161647849c37e18193376ab69b9957a37c0e5ae",
         intel: "df6bc240e357d57be812a210a9be96f8f0a88a771cae9856bd653c8551b8b524"

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
