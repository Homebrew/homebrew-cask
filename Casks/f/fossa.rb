cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.16.5"
  sha256 arm:   "1be748b9dc55c671d890e65796a6b92c33b077cabd6e98317b9b519fb1ba87eb",
         intel: "9fde1c8eb77a96c69ac1847624e2dcf2fa893d0925015ddb6ad803cea8e5f8cd"

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
