cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.40"
  sha256 arm:   "35d414996581e4b5ddefed8c91829c3d1b5d72cbfa2f948a3c66eb2ea9a2cc79",
         intel: "e328aa6a41f18de31091a742ceb84f808a3ecff31a1c03ff705ddd6e647bf772"

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
