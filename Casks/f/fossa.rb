cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.12.1"
  sha256 arm:   "8872b8434caffb4b94e800dd04bec2c4a4b45a979d741f315d085c4c30ee5b9c",
         intel: "70a08f0c9cf8577cb942ecd81a71f38714254824e6732d56797d60a051fd4fdc"

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
