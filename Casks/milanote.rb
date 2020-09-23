cask "milanote" do
  version "2.2.13"
  sha256 "b561c76de35dcec9b38d46b5ae4eb3a33852727e58c0f6e32fe1debc8b361ac6"

  # milanote-app-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://milanote-app-releases.s3.amazonaws.com/Milanote-#{version}.dmg"
  appcast "https://www.milanote.com/download-mac-app"
  name "Milanote"
  homepage "https://www.milanote.com/"

  app "Milanote.app"

  zap trash: [
    "~/Library/Application Support/Milanote",
    "~/Library/Caches/com.milanote.app",
    "~/Library/Caches/com.milanote.app.ShipIt",
    "~/Library/Library/Logs/Milanote",
    "~/Library/Preferences/com.milanote.app.helper.plist",
    "~/Library/Preferences/com.milanote.app.plist",
  ]
end
