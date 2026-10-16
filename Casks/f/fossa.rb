cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.20.2"
  sha256 arm:   "7e47f1a044d86b5645810419b266d0e79a132a867855daaf9157fadef98d8af7",
         intel: "a91536eba0fb8c8b2ab1901dc2e06866a9609dee2b26ae29978438b0af166d7f"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip"
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
