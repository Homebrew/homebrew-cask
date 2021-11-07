cask "matterhorn" do
  version "50200.14.0"
  sha256 "57391e71b0a9077c427b627d2fa3c26f88d58f525d5caa2e45c4841656563b24"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-x86_64.tar.bz2"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-x86_64/matterhorn"
end
