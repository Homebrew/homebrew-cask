cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.15.3"
  sha256 arm:   "a71667a9b795eeafd8dc373f495dd82397aaf8dac30a1e34ff967d4dc922ffa6",
         intel: "7cf97f4af987d4d9a3b2fd16561e42991a721460ef490161f4420f3c70501e88"

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
