cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.19.2"
  sha256 arm:   "98c7dc23796c5106dbc07244cd52a40a69f001545477974df9836369dd35c26a",
         intel: "5a7e8679e86e46b16bb7aed0a78ca8cd5ccfae794f0799fba66bd585fd84363f"

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
