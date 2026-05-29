cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.10"
  sha256 arm:   "2574587681d4259bba7681f797d75860a559ff419842233f03beb7d260c56149",
         intel: "c0c90809242ad12be6cc14a410e0297eb24a3e00cff7613c13ae216ec7b93c7f"

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
