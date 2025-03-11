cask "matterhorn" do
  arch arm: "arm64", intel: "x86_64"

  version "90000.1.0"
  sha256 arm:   "39c292a945a9b258fc25e5e36354d1001a2d22b8674e7bf6db464a61f8681259",
         intel: "96920c83c3300ede0ee38f9fb78d79ab4d3b19abb42aefbe21df12513a1e210d"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-#{arch}.tar.bz2"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-#{arch}/matterhorn"

  # No zap stanza required
end
