cask "logos" do
  version "9.0.0.0181"
  sha256 "70b4f968ab3b9148492457b0f8926afc2b2345153aca35c9ba9ceb5e6bdb574d"

  # downloads.logoscdn.com/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/LBS#{version.major}/Installer/#{version}/LogosMac.dmg"
  appcast "https://clientservices.logos.com/update/v1/feed/logos#{version.major}-mac/stable.xml"
  name "Logos Bible Software"
  homepage "https://www.logos.com/"

  depends_on macos: ">= :mojave"

  app "Logos.app"

  uninstall launchctl: "com.logos.LogosIndexer",
            quit:      "com.logos.Logos"

  zap trash: [
    "~/Library/Preferences/com.logos.LogosIndexer.plist",
    "~/Library/Preferences/com.logos.LogosCEF.plist",
    "~/Library/Preferences/com.logos.Logos.plist",
  ]
end
