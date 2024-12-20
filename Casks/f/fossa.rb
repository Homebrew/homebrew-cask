cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.42"
  sha256 arm:   "59473bd1647edc7d78478159179f6193db5426e95d840512ff98b4682c18ed64",
         intel: "cac7fc6926dbf6c31e86186c9492a2d7a4f091790268d2a7d2431c995441b0f8"

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
