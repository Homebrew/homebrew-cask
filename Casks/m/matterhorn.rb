cask "matterhorn" do
  arch arm: "arm64", intel: "x86_64"

  version "90000.0.1"
  sha256 arm:   "a2f84efca249e7c69290fd88b85637f40935ecc879034f0ca1497cc436d8e177",
         intel: "caf0117a67e1db005d9920fd9743e8872561fbdab9812dfe4e295f26bdaa2bf9"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-#{arch}.tar.bz2"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  binary "matterhorn-#{version}-Darwin-#{arch}/matterhorn"

  # No zap stanza required
end
