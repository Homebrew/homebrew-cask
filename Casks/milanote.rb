cask "milanote" do
  version "2.2.14"
  sha256 "b20cfc1c494bce27e7db33f1756ba858a325c319398b0401e3423716116d8975"

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
