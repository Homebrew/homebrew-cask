cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.0"
  sha256 arm:   "3edd4c16aa6482cc1daac062ba84763b724dc8a0c98ca643cb40fd787ed0dd00",
         intel: "f978ab34a27d713780ca2ebc19332460d3f1aeea49bdb03682c9ce3f266de216"

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
