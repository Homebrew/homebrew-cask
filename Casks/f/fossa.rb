cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.5"
  sha256 arm:   "813a94e0f298f8d0e14a787bdea8c933e8d4b89801bfeea9a593a19a52cfa865",
         intel: "495368f900037a16d9479c954f3d83e7b625e8825897093e05fe47dacb3b6b43"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "FOSSA"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "fossa"

  # No zap stanza required
end
