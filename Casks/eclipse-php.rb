cask "eclipse-php" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.24.0,2022-06"

  if Hardware::CPU.intel?
    sha256 "2015ee61c3fa86d652d2473a6313ac2b91727f9c5f296d6de9bdae65846f0a21"
  else
    sha256 "614a00936254bb3141192e04aedd27d952a5aca909748bfe4ac4cdbe7e4c34cd"
  end

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
