cask "parsify" do
  version "1.6.0"
  sha256 "72841fce3810d80a6f0a5d7158e0335b0f7a9aa9c9ab2f10d8eaf9b8789df3aa"

  url "https://github.com/parsify-dev/desktop/releases/download/v#{version}/Parsify.Desktop-#{version}.dmg",
      verified: "github.com/parsify-dev/desktop/"
  name "Parsify"
  desc "Extensible calculator with unit and currency conversions"
  homepage "https://parsify.app/"

  app "Parsify Desktop.app"

  zap trash: [
    "~/Library/Application Support/Parsify Desktop",
    "~/Library/Preferences/app.parsifydesktop.plist",
    "~/Library/Saved Application State/app.parsify.parsifydesktop.savedState",
  ]
end
