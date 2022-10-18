cask "eclipse-php" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.25.0,2022-09"
  sha256 arm:   "37adbd51960bf43382b3aaf4dcadabab0c59bcb6c7a30d2aacf8249cd416db38",
         intel: "79f668219fa56849f6b9a1dc883929a07d7ed858802f131004c8834466b8cb3c"

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
