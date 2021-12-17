cask "matterhorn" do
  version "50200.14.1"
  sha256 "25bb9010374b2b2320b46bc87ea16286930958f0740bdfe3e0c919522656e33f"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-x86_64.tar.bz2"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-x86_64/matterhorn"
end
