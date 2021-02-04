cask "parsify" do
  version "1.5.2"
  sha256 "566f9e5332158f8339550d6eb29cad7fd6ad5b8a06b860908f9c24c304bffcac"

  url "https://github.com/parsify-dev/desktop/releases/download/v#{version}/Parsify.Desktop-#{version}.dmg",
      verified: "github.com/parsify-dev"
  name "Parsify Desktop"
  desc "Extensible calculator with unit and currency conversions"
  homepage "https://parsify.app/"

  app "Parsify Desktop.app"

  zap trash: [
    "~/Library/Application Support/Parsify Desktop",
    "~/Library/Preferences/app.parsifydesktop.plist",
    "~/Library/Saved Application State/app.parsify.parsifydesktop.savedState",
  ]
end
