cask "matterhorn" do
  version "50200.16.0"
  sha256 "177835e7a2996829959c622dd69c03c0e21e24f79a74166867c6b9676c3a5463"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-x86_64.tar.bz2"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-x86_64/matterhorn"
end
