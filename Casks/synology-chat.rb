cask "synology-chat" do
  version "1.2.2-0222"
  sha256 "9c3ad4a3e11f6646f9c91317ef9bfa4e4352ef68d025c5ad782771250e2f1015"

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
