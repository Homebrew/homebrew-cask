cask "matterhorn" do
  version "50200.12.0"
  sha256 "b2b5b4082824dc49ddef0bf2957352b2fd309a64517dfda962a9a75c15e89842"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-x86_64.tar.bz2"
  appcast "https://github.com/matterhorn-chat/matterhorn/releases.atom"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-x86_64/matterhorn"
end
