cask "logos" do
  version "8.17.0.0011"
  sha256 "e66f589da13ee87cb86ea8906c8928563b1d02185097d5f945a5912e352795f8"

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
