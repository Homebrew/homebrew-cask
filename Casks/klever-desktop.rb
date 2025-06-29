cask "klever-desktop" do
  version "1.1.0"
  sha256 "0645540b4d35dd6b35362cb6343d99dcccf9afb57fe2a0b5b71082d7790bce4a"

  url "https://github.com/FigmaAI/KleverDesktop/releases/download/v#{version}/KleverDesktop-#{version}.dmg"
  
  name "KleverDesktop"
  desc "Companion app for the Instant UT Figma plugin, Klever"
  homepage "https://github.com/FigmaAI/KleverDesktop/"

  app "KleverDesktop.app"

  zap trash: [
    "~/Library/Application Support/KleverDesktop",
    "~/Library/Preferences/com.klever.desktop.plist",
    "~/Library/Saved Application State/com.klever.desktop.savedState",
  ]
end
