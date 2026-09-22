cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.19.1"
  sha256 arm:   "7715dcb55b0dc69d2606ccae0bae4bff8e13e934c9c4fb39f6e15784d7498118",
         intel: "aa152c1c7b5cd5a28c5baba555ca9dcc285666ef0beb03001630db37cd1c55e6"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip"
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
