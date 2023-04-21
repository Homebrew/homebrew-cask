cask "matterhorn" do
  version "50200.18.0"
  sha256 "26f99c7f1efdc62ddfb2fafe70abcb2ca1d3da9d1c10520f6d854e4407998f58"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-x86_64.tar.bz2"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-x86_64/matterhorn"
end
