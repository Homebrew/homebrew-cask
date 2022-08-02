cask "matterhorn" do
  version "50200.17.0"
  sha256 "807d259bf7d4843ce4b75a6b5f6c6e97b73d806cf67f0bdfeed56c93573af900"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-x86_64.tar.bz2"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-x86_64/matterhorn"
end
