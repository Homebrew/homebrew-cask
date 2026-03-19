cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.16.3"
  sha256 arm:   "ebe172eb194312333529510f425f8c7e15aee300018c6cb02819527aed8a0be7",
         intel: "bccd797335d752a5c9c4b9e532c420cb64aa8aad85502e28b9aea48cb8152ee1"

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
