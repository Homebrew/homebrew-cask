cask "matterhorn" do
  version "50200.11.0"
  sha256 "614f3036c65819ea280c6f2ce55ed434ea2a1e04105fc3be386f69064340df7e"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-x86_64.tar.bz2"
  appcast "https://github.com/matterhorn-chat/matterhorn/releases.atom"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-x86_64/matterhorn"
end
