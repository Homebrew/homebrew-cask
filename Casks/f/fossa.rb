cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.2"
  sha256 arm:   "72d735d06e1ac5a5c213dc1a7ab235220128c3c64aad51b37ccaecd8151b79b8",
         intel: "d7e271446615f2ddce8396187e553e2e99509283a05ec91503230306ed46f450"

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
