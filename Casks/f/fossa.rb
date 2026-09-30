cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.20.0"
  sha256 arm:   "3042f3aeae2f1726c2fcd7ce4e703c9b149741b01aa27758a12d43ae93284889",
         intel: "777e9d251d0bc77639a4634786998e10ef892fae1b1e6c794e6c29abcd73fed3"

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
