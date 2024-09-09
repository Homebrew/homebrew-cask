cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.32"
  sha256 arm:   "c29325272a2609a7209017dd7d2fe293afcecb7153bf715c072962fe10c91818",
         intel: "766ba5a090a0b84f82289f93fb0babb5c2621cd62daa7bb10dc1c0b5d62dbec2"

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
