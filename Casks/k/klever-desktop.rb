cask "klever-desktop" do
  version "2.0.0"
  sha256 "a4747261e99cb7629b811755100d50755af562a8f7c82c82dd254fd29ae88758"

  url "https://github.com/FigmaAI/KleverDesktop/releases/download/v#{version}/klever-desktop-#{version}.dmg"
  name "Klever Desktop"
  desc "GUI Wrapper for AppAgent"
  homepage "https://github.com/FigmaAI/KleverDesktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Klever Desktop.app"

  zap trash: [
    "~/Library/Application Support/klever-desktop",
    "~/Library/Preferences/com.klever.desktop.plist",
    "~/Library/Saved Application State/com.klever.desktop.savedState",
  ]
end
