cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.46"
  sha256 arm:   "ee9329becfd8357e9d09bd472102cc99b3dee50085049714cd18900022297939",
         intel: "7b503ec69eff49149f281888edeb5b11c503e5bd6d6c212308bc5135fce477be"

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
