cask "parsify" do
  version "1.8.0"
  sha256 "f44f3210b2059cb9f55861a15ec7dd8f9b3c56e2b774e91b9d1d17a7ad233f61"

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
