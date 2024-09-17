cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.34"
  sha256 arm:   "0ce6297ea94dca4933e6451f6e6b56af98e50d37f83748613d8fa8edb65ec5fe",
         intel: "64f612f78dd284502a5206a968030660ab43585dec2f7944fda842096c45447c"

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
