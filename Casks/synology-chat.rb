cask "synology-chat" do
  version "1.1.1-57"
  sha256 "1f61431ab0e7ac5646bfedec610e2ca6be527f5ab4001789a14990ebd9aab78c"

  url "https://global.download.synology.com/download/Tools/ChatClient/#{version}/Mac/Installer/Chat-#{version}.dmg"
  appcast "https://archive.synology.com/download/Tools/ChatClient/"
  name "Synology Chat"
  homepage "https://www.synology.com/en-us/dsm/feature/chat"

  app "Synology Chat.app"
end
