cask "diversion-app" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "bfee67bdc52f5a47b9d912fbbb14b69453409044ff6ffff87dedc39565add00c",
         intel: "5a4f1209a991ded636e73d81c2010251bdcf0af0f46339e18cf8bd20bb109d0d"

  url "https://download.todesktop.com/240506tnendbebc/Diversion%20Desktop%20#{version}-#{arch}.dmg"
  name "Diversion Desktop"
  desc "Desktop app for Diversion version control"
  homepage "https://www.diversion.dev/"

  livecheck do
    url "https://download.todesktop.com/240506tnendbebc/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey
  depends_on cask: "diversion"

  app "Diversion Desktop.app"

  uninstall quit: "com.todesktop.240506tnendbebc"

  zap trash: [
    "~/Library/Application Support/Diversion Desktop",
    "~/Library/Caches/com.todesktop.240506tnendbebc",
    "~/Library/Caches/com.todesktop.240506tnendbebc.ShipIt",
    "~/Library/Caches/diversiondesktop-updater",
    "~/Library/Logs/Diversion Desktop",
    "~/Library/Preferences/com.todesktop.240506tnendbebc.plist",
  ]
end
