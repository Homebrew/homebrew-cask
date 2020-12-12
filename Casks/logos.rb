cask "logos" do
  version "9.1.0.0018"
  sha256 "ad7b53b69d2118de3a2739ca76d91909905d81b2da7d7ef3fa45cc293d59e967"

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
