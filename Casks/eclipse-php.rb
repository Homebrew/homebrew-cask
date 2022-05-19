cask "eclipse-php" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.23.0,2022-03"

  if Hardware::CPU.intel?
    sha256 "80df02cf62160599002fc58e91ed0005e39112fb633df39d06febf4d955da2d7"
  else
    sha256 "aeb6c3bcdb6ccfd3286c1676d94d3b7adcedf5d248cdf7a5d18ef3bbb40ef93b"
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
