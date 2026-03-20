cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.16.4"
  sha256 arm:   "c4f447d6fba544da6b01969d0d1a50b529c326d69e940e67f3408cb72d8bb133",
         intel: "41154eda589f7abbb46fc0401fa93089aa09b2da2243244bfe08088241595078"

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
