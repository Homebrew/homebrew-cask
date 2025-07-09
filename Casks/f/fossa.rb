cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.12"
  sha256 arm:   "5e58b6d42ccc07a3439b1d46b753b87467145f38aaa1b4ca6edfb926780a824c",
         intel: "2c8a7c67e3ab0f9e2ce92dd505ea46314acbabdc0fc148830b2e5440ca869a11"

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
