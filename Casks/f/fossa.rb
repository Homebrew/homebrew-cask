cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.10"
  sha256 arm:   "36b9f2d1c917018a5afa21a91585378c16653d518971c984b2eb192eec96aa59",
         intel: "e93d96a890494d6cb4172cd8f9d2c128b70064a8f96780d846d4a2bb923a8939"

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
