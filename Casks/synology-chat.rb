cask "synology-chat" do
  version "1.2.1-0207"
  sha256 "782cb4c67d5beb3d2157566ab066ca69ad877c343d5ba9892303a7930cc4383e"

  url "https://global.download.synology.com/download/Utility/ChatClient/#{version}/Mac/Installer/Synology%20Chat%20Client-#{version}.dmg"
  name "Synology Chat"
  desc "Messaging service that runs on Synology NAS"
  homepage "https://www.synology.com/en-us/dsm/feature/chat"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/ChatClient"
    regex(/Version:\s*(\d+(?:\.\d+)*-\d+)/i)
  end

  app "Synology Chat.app"
end
