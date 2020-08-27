cask "mendeley-reference-manager" do
  version "2.33.0"
  sha256 "b2c9575438460f4acf6789a43be8b35ff48c8fb482a7dd04f9fcb1e2005ba924"

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast "https://static.mendeley.com/bin/desktop/latest-mac.yml"
  name "Mendeley Reference Manager"
  homepage "https://www.mendeley.com/download-reference-manager/macOS/"

  app "Mendeley Reference Manager.app"

  zap trash: [
    "~/Library/Application Support/Mendeley Reference Manager",
    "~/Library/Preferences/com.elsevier.mendeley.plist",
    "~/Library/Saved Application State/com.elsevier.mendeley.savedState",
    "~/Library/Logs/Mendeley Reference Manager",
  ]
end
