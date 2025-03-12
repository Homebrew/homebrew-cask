cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.3"
  sha256 arm:   "9562727ba5384c1e96fc5ac7d99021a78dce45dc2894147e167c5dd97aab87b2",
         intel: "b15c1f7d0aeb8f00bd5d84bbcf6c3ea854ff2452321f384dd898c1ea5d6bbc2f"

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
