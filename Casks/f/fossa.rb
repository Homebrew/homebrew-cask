cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.15.1"
  sha256 arm:   "4215feb7717fca6dd41f26ce2ff5b60ad9f5efc065f915138a19fa1226ea5f09",
         intel: "7a4c9e22e16b2fec8a1fbbc16f3f268a546ed9ac4a606b7f92e9b183498feec4"

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
