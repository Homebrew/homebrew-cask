cask "matterhorn" do
  version "50200.13.0"
  sha256 "2fc9d2b51ff21ab92bca7280f200a8acc11e41153235ef3eaf84612ee23486d3"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-x86_64.tar.bz2"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-x86_64/matterhorn"
end
