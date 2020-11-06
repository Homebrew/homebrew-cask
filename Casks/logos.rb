cask "logos" do
  version "8.17.0.0014"
  sha256 "4a720ac51ad6be85c60fd8e36e030524f75e7d41ce7a047ef665de970b90cd3c"

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
