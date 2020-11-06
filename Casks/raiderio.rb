cask "raiderio" do
  version "1.6.3"
  sha256 "e79d919bfc22442fd27ca09a5dd4e4182c733e02cf33d34210d266f7016ff832"

  # github.com/RaiderIO/raiderio-client-builds was verified as official when first introduced to the cask
  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg"
  appcast "https://github.com/RaiderIO/raiderio-client-builds/releases.atom"
  name "RaiderIO Client"
  homepage "https://raider.io/"

  app "RaiderIO.app"
end
