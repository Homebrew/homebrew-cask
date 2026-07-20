cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.13"
  sha256 arm:   "4f7fc57eb4d610dc7ea2d75edce6fde465e87fccf34fb098b4317331b83cdd73",
         intel: "a870b56134a94fadcefde6df2e27e23ad5606e8623d359dba89420ca9cc7acd8"

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
