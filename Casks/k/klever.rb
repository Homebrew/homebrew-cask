cask "klever" do
  version "2.0.0"
  sha256 "74b0ab11cc37c06dff3bba2828c874cb9c85f98ff0be19afafec0c092303ecea"

  url "https://github.com/FigmaAI/KleverDesktop/releases/download/v#{version}/klever-desktop-#{version}.dmg"
  name "Klever Desktop"
  desc "GUI Wrapper for AppAgent"
  homepage "https://github.com/FigmaAI/KleverDesktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Klever Desktop.app"

  zap trash: [
    "~/Library/Application Support/klever-desktop",
    "~/Library/Preferences/com.klever.desktop.plist",
    "~/Library/Saved Application State/com.klever.desktop.savedState",
  ]
end
