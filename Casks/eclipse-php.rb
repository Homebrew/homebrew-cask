cask "eclipse-php" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.27.0,2023-03"
  sha256 arm:   "5d590bfcddd95e3e554fa2f7a09f84d52a83179ed3254ab3e689d4ddc5f47371",
         intel: "637052f351c14fd3bac3c6e7f0799d4e49d75512e8cfde393d94165b8fc7cc86"

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
