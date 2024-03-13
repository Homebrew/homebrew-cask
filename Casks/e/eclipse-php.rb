cask "eclipse-php" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.31.0,2024-03"
  sha256 arm:   "7c14b762b6ee44d7cc29a1cb5565e30a63b41cf3649b81a0086ec656f8abe25c",
         intel: "6fbaf48541c5b25d892855c02b239c3512882009e4f6cd0c6200941945bd2f63"

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
