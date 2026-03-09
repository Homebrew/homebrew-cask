cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.16.1"
  sha256 arm:   "5ab6768ca38a99747736e5de3e1411e2afc47bf5f95dc8849fabc9b01a785357",
         intel: "ec83f33c95d7c7f2e3a43acdfd2ce0e2580d45a3c9f419cc0f9b5ea255a9a87c"

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
