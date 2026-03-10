cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.16.2"
  sha256 arm:   "5f82dfd6a09b87ad2d4e56633bdae1db811437f897ff6d1969de97ae39f6c3b2",
         intel: "5671032420d1f98766a94d481adbb698898c7fadbcffcd13a7893c6479b42fa0"

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
