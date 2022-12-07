cask "eclipse-php" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.26.0,2022-12"
  sha256 arm:   "14faac0a2bb72648ce16939816fe7ff7cbb0410561b6564b13ea58755c0f83e4",
         intel: "5998bf1e2f736ecc16c4d291d54edb4baf5fb43cd8da89b4c1259efaa1541e3d"

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
