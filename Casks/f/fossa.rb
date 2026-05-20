cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.8"
  sha256 arm:   "3c577b5143231a15655af17507e33dd3306199ada646db949ac23cf958394f76",
         intel: "b77f92103253fe45f93d3fb03911c8c795f21c8fd7a4dba990e95083a69e9b30"

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
