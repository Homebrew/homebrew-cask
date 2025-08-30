cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.11.7"
  sha256 arm:   "ac6e52ad9fd918fc95edd7672b7748977bae1bf48b5f201e7d87ae93bfbf568c",
         intel: "00c23abfc2c023aaf3dfdaedae89660a8acec71640897304aafd0bfdae8d4eaf"

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
