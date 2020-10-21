cask "mendeley-reference-manager" do
  version "2.38.0"
  sha256 "6b79b5a1744a6fb73a43718c0c9021ce3319e7f98234f7c54c6b840af420f236"

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
