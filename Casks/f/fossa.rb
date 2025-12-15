cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.15.0"
  sha256 arm:   "b53e334295a19035dda2ab67415e18d3f1a04ac5509533fa397fec1e7d24a5f8",
         intel: "a8e49650639674dd77a2cfeef6778613b0563f071bdf69329ed14fc8c3569987"

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
