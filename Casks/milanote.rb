cask "milanote" do
  version "2.2.16"
  sha256 "43f7732237efdec55486575ea423c312533b3edbfa75f6782f65c8c9e34a9a97"

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
