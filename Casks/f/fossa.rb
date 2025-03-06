cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.2"
  sha256 arm:   "618e7b827ca820a975770b568b4257e49fa7d7ace259978774e47b93815b873d",
         intel: "93783f5b91b5e107916f568010e724e40eb5546c792ccf4ae0079f84c08097b1"

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
