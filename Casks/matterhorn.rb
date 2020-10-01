cask "matterhorn" do
  version "50200.10.2"
  sha256 "cd54f4758eafe8babf58534d3fb0bfde7e01c930cf1539bbe4500b783a73710c"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-x86_64.tar.bz2"
  appcast "https://github.com/matterhorn-chat/matterhorn/releases.atom"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-x86_64/matterhorn"
end
