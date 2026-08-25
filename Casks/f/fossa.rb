cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.18.1"
  sha256 arm:   "b3d3012f9052bf9bc87a025952d82db44d83f98701e2e7aebc8ac76f942066e9",
         intel: "3c74a75377929a7b15b463e61c7d1f245b40420882f428b56ae4b0758f150b9e"

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
