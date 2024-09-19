cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.35"
  sha256 arm:   "f91a13100af03e71518efeac6e36d4713a9239f7cb9527841160a326a134e575",
         intel: "781ac414918cc3fbc5815594afd75f10240e769dcca531561c457d1e1f13cf92"

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
