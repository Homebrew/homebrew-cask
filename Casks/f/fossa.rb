cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.15.7"
  sha256 arm:   "28f6c714edf7c60b27a2b056f1a5f56c03113db0796b37d19b5a40d9bfab5fac",
         intel: "5db8676e2499a9fe0a4180477c5960f49d6674572612c5537e19995e65ff4370"

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
