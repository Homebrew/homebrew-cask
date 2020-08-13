cask "raiderio" do
  version "1.5.2"
  sha256 "b2f40473149d8fb260d13662f04e55fa37dadd08c275eecb18a477c6f1e795dd"

  # github.com/RaiderIO/raiderio-client-builds was verified as official when first introduced to the cask
  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg"
  appcast "https://github.com/RaiderIO/raiderio-client-builds/releases.atom"
  name "RaiderIO Client"
  homepage "https://raider.io/"

  app "RaiderIO.app"
end
