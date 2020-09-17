cask "matterhorn" do
  version "50200.10.1"
  sha256 "793715b8aec76ddc36c5160b01319a808babd7df5dcb3afce3bb4506f18dc7e3"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-x86_64.tar.bz2"
  appcast "https://github.com/matterhorn-chat/matterhorn/releases.atom"
  name "Matterhorn"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-x86_64/matterhorn"
end
