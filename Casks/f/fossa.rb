cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.18.0"
  sha256 arm:   "47441b401df3308acfac9e4294e2f60b657caef0b0e4abf7a94307bf0c7c5b79",
         intel: "b6d7aaf7b0463b0009fd3f2ca47911d1f9d8212db5ef5d860aa811a6838d2d93"

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
