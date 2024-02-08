cask "matterhorn" do
  arch arm: "arm64", intel: "x86_64"

  version "90000.0.0"
  sha256 arm:   "e0ae467160202b7c36b95d980ee8f822fbf2776f55057f609e7bc744ce619919",
         intel: "c49f9ad49ca745f629c1251eb4a75d6e8ff7c678aefa93939977bde1fb4223ff"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-#{arch}.tar.bz2"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-#{arch}/matterhorn"

  # No zap stanza required
end
