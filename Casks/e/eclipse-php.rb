cask "eclipse-php" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.30.0,2023-12"
  sha256 arm:   "a0bc97c935bbe89307054a53868532df617b7ece0f5ed5504f6437c4b0760cf3",
         intel: "e3a6bbef82f194984df58f95f464b5af078603ae8746d51a414a75ddec12321e"

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
