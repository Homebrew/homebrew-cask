cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.31"
  sha256 arm:   "434390183e10857d305d9b8bc5a2e25107e5fca71f8023b578b6c9458a63efc6",
         intel: "084842d8c49220268858145ab24be4624f9469b7537b9ca83209e5fb4dfd3479"

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
