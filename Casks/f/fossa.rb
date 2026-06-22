cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.11"
  sha256 arm:   "7fc92dac0cb88e1ad1d83b22324d2400842a9eb7f8af4aa6f4dac74a5536e13f",
         intel: "67b86a5c7b1b65053ce8e5b13cc441ff465eaa0adbe848f0e1ec8894b9466252"

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
