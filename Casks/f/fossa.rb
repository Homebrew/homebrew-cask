cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.20.7"
  sha256 arm:   "c0088e30532dd7c15466c25147c6fcfc022cdd2c2a7a2f5ee5aa7b14305ab15e",
         intel: "03c85347849ea3dc4984c89ac07f1841ea077478bfb032430708937e61969d39"

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
