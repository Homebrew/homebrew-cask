cask "parsify" do
  version "1.6.3"
  sha256 "6e98677c1daf3c0a160e9d28679c8f9eab5b7ac7410fe34ad5b4de556e0de90e"

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
