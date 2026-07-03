cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.12"
  sha256 arm:   "215acded98e8104d98a1bc54376feecd41b48ff7cc8088823c71f8ccac1c5741",
         intel: "518e573c47feea1ff2568c16ec6b00ab38ac84da6ba78da573c479d456126f49"

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
