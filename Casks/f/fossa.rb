cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.15.6"
  sha256 arm:   "489a6ae684afdd73c874d2d275c27b1b15886569712a2e771c842254ab012775",
         intel: "dea922d7f2af16395bb70db34bf8a2f45c8e183662408e4294718e29faa9f7f6"

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
