cask "eclipse-php" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.29.0,2023-09"
  sha256 arm:   "4d79e164ee9af7ebeb3a75cd1939f7918076bfbc44d6ed180eca372326b29f15",
         intel: "013d47dc096c25a9a512eacedc099d4ba2966d4887e96a24ac0a1bfa13f537cc"

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
