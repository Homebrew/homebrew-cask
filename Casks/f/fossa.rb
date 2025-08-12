cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.11.0"
  sha256 arm:   "263e8fe49c4fea7712bc2020c18f24c37b0c4e5ad7a4faa4dadb3617379a88e4",
         intel: "4e3d061170bc62187587eb8af0f915d5a7e5143179f509ff5e99532bbca56cae"

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
