cask "eclipse-php" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.39,2026-03"
  sha256 arm:   "5901b0b6bbc82b4a96076f7c6560f19d63cbff21d1f03b1335793ad965d4999c",
         intel: "fe41f2c1f72e764de85a8ffeff4440f90d777bde42d4418a4a580655b2f8d1c2"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-php-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for PHP Developers"
  desc "Eclipse IDE for PHP developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on macos: ">= :big_sur"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse PHP.app"

  zap trash: [
    "~/Library/Preferences/org.eclipse.platform.ide.plist",
    "~/Library/Saved Application State/org.eclipse.platform.ide.savedState",
  ]
end
