cask "milanote" do
  version "2.2.6"
  sha256 "f4b9a164136b17e49ac0488b41d10c08d54a40728ff4608a68327a57e2b9426f"

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
