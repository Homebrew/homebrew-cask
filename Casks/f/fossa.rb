cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.14"
  sha256 arm:   "3255251faed3fefd3667524c21adff5b120c8daa3b95d2f421e3ddd4430844f5",
         intel: "3fb82e28f51a1af0fb4260f8dd7d6c05f5b078e7e63f43e6706acd25b9dc1ce1"

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
