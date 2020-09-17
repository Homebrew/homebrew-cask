cask "logos" do
  version "8.16.0.0002"
  sha256 "e57e21bb22420d69a62c311be8771a99db74e1b25789b862ec838ab2357750a8"

  # downloads.logoscdn.com/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/LBS8/Installer/#{version}/LogosMac.dmg"
  appcast "https://clientservices.logos.com/update/v1/feed/logos#{version.major}-mac/stable.xml"
  name "Logos Bible Software"
  homepage "https://www.logos.com/"

  depends_on macos: ">= :el_capitan"

  app "Logos.app"

  uninstall launchctl: "com.logos.LogosIndexer",
            quit:      "com.logos.Logos"

  zap trash: [
    "~/Library/Preferences/com.logos.LogosIndexer.plist",
    "~/Library/Preferences/com.logos.LogosCEF.plist",
    "~/Library/Preferences/com.logos.Logos.plist",
  ]
end
