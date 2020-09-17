cask "mendeley-reference-manager" do
  version "2.34.0"
  sha256 "d0c34fbc8752aada205abb362e75387385e93765f71ef273089c955fc36481ef"

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast "https://static.mendeley.com/bin/desktop/latest-mac.yml"
  name "Mendeley Reference Manager"
  desc "Research management tool"
  homepage "https://www.mendeley.com/download-reference-manager/macOS/"

  app "Mendeley Reference Manager.app"

  zap trash: [
    "~/Library/Application Support/Mendeley Reference Manager",
    "~/Library/Preferences/com.elsevier.mendeley.plist",
    "~/Library/Saved Application State/com.elsevier.mendeley.savedState",
    "~/Library/Logs/Mendeley Reference Manager",
  ]
end
