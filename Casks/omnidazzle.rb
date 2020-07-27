cask "omnidazzle" do
  version "1.2"
  sha256 "47dfafb0740eeb164832804bd9ccf898f722057f919cd59197e04f9263f3a175"

  url "https://downloads.omnigroup.com/software/MacOSX/10.6/OmniDazzle-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniDazzle"
  name "OmniDazzle"
  homepage "https://support.omnigroup.com/omnidazzle-troubleshooting/"

  app "OmniDazzle.app"

  caveats do
    discontinued
  end
end
