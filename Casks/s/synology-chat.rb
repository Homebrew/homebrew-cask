cask "synology-chat" do
  version "1.2.3-0232"
  sha256 "7286331883107347ff675fe6cb76c3e2233a1af75f0d2903391a3c3da97dedb9"

  url "https://global.download.synology.com/download/Utility/ChatClient/#{version}/Mac/Installer/Synology%20Chat%20Client-#{version}.dmg"
  name "Synology Chat"
  desc "Messaging service that runs on Synology NAS"
  homepage "https://www.synology.com/en-us/dsm/feature/chat"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/ChatClient"
    regex(/Version:\s*(\d+(?:\.\d+)*-\d+)/i)
  end

  app "Synology Chat.app"

  zap trash: "~/Library/Application Support/Synology Chat"
end
