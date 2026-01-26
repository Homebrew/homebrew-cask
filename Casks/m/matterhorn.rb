cask "matterhorn" do
  arch arm: "arm64", intel: "x86_64"

  version "90000.1.1"
  sha256 arm:   "c9305307f95b1496a66a787ef27832f3abcf4be71dd6197d5e1f1d71377d45e5",
         intel: "d135d5d76956da08aa1b57f8f5d28967b6d827d7cc52dfe6b2938b37761dd02f"

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-#{arch}.tar.bz2"
  name "Matterhorn"
  desc "Unix terminal client for Mattermost"
  homepage "https://github.com/matterhorn-chat/matterhorn"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "matterhorn-#{version}-Darwin-#{arch}/matterhorn"

  # No zap stanza required
end
