cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.0"
  sha256 arm:   "8a25c9698954849f7949420dc815edfefc2130a78b5632ba730be6b60e03299e",
         intel: "f352104d6a20959c0a81d3b15b23fcfb84613cf573b718fcf66077da216a2b20"

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
