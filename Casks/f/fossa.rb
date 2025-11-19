cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.13.0"
  sha256 arm:   "6c13c9c3d8f47870e6d612fb72af0f224962118b9fbb1069810b408870bc676a",
         intel: "9f462093bbbb53d6510c588320f395582dfc04deb5d4cb276409beef7f89394f"

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
