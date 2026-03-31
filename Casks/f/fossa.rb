cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.16.6"
  sha256 arm:   "d984de4b479879d90189376a40b71daa33aeda872aaba2d1cbb41f547e039556",
         intel: "8d85c27379ed88d9689478266ad551f0435fcfd1bb50d610ef590da9dcfac68e"

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
