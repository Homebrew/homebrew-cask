cask "eclipse-php" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.38,2025-12"
  sha256 arm:   "263f0fc89dcb9328856d558b07649e58a80f3dffbf58e6ef1ab8826f43e21ca8",
         intel: "0a8adee34b688336da2fe43096934158cf9e8c6617953d552027d6a24e200056"

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
