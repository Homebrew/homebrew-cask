cask "parsify" do
  version "1.7.0"
  sha256 "4d1abbeece2467767d57305896b9f6f2aabe766f846a124ace6a09f35ed62fcb"

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
