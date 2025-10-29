cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.12.0"
  sha256 arm:   "257bd2782093c559e2d910952ad6e70a84efb75406af7c843d78ff93849a0d17",
         intel: "49e070c72621a5701f8a84c5d6197ef5e55e75d48d5a0e20ce6ef2ec348b803a"

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
