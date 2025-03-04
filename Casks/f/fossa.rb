cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.1"
  sha256 arm:   "ae3d6a2a9b76fea5f81646ccfca03ee9d63471a16b4944acc69cd30c0fd439c2",
         intel: "bf108d0605c5e5fc9f5f731d0af61cb68c339453ebfcb0ecbd274eb6c96205f0"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "FOSSA"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "fossa"

  # No zap stanza required
end
