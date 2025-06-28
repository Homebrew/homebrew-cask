cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.11"
  sha256 arm:   "f12c7339073720f95c40e080af301bb3e717ddcf591ec8bda6351c56e9b636c8",
         intel: "3a74a3dcf10d9f01d14e5cbe481b08b2074931d67fdb3a35929ee38b414f6da0"

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
