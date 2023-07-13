cask "poe" do
  version :latest
  sha256 :no_check

  url "https://desktop-app.poecdn.net/downloads/Poe-latest-universal.dmg",
      verified: "desktop-app.poecdn.net/downloads"
  name "poe"
  desc "AI chat client"
  homepage "https://poe.com/"

  app "Poe.app"
end
