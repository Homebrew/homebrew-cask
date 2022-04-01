cask "synology-chat" do
  version "1.2.0-0146"
  sha256 "3ede0d4fe4fd7d8ff55d15b1ef9121d52c97672842a56ecc334099832a7a4b39"

  url "https://global.download.synology.com/download/Utility/ChatClient/#{version}/Mac/Installer/x86_64/Synology%20Chat%20Client-#{version}.dmg"
  name "Synology Chat"
  desc "Messaging service that runs on Synology NAS"
  homepage "https://www.synology.com/en-us/dsm/feature/chat"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/ChatClient"
    regex(/Version:\s*(\d+(?:\.\d+)*-\d+)/i)
  end

  app "Synology Chat.app"
end
