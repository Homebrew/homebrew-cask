cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.37"
  sha256 arm:   "e04358b5ba5626acf6538317763ce0c9258945d67bc264a53b84efc17bee32b3",
         intel: "d16c807d5fee51c397ee4e08cda2759ea45dc09709bd5445c7b3366c75a9a8fd"

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
