cask "mendeley-reference-manager" do
  version "2.41.0"
  sha256 "8eab74b8a7b003d78371e5ca468e6f983f564a873a68eadecc79a66b6785b61e"

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
