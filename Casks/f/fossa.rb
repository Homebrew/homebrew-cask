cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.30"
  sha256 arm:   "0798d2a5174ffd7b01e2bcf3d78b41202c2f775449c5a0a06186d8dfe750acfa",
         intel: "b0774651cf7bc8ada41f8d8d2e35675de1b2c50546fe655f20b7a9ff9d0881c8"

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
