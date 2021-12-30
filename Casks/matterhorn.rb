cask "matterhorn" do
  version "50200.15.0"
  sha256 "1957ece9b769fe2767898dbfe2204c82a1813e03f6e7cc8309f92483c34371f6"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-x86_64.tar.bz2"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-x86_64/matterhorn"
end
