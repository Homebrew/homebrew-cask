cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.18.2"
  sha256 arm:   "53e7827502abb2f755d6cf41374967697917e82647ce1801a7d387aa4a908bc8",
         intel: "db4e4d4283e5b45f6e25634175a48f26fef2dc9dbc865425446fc6015c9c00d6"

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
