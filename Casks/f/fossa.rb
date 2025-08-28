cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.11.6"
  sha256 arm:   "eca1dd96eec450116034b548a51db7d01e60406e6079e6b8a9ed2c2b1d8798e7",
         intel: "37df7b6f2a2499d35bead91206b4022a3c01399250e2be044acd7e71d7d29169"

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
