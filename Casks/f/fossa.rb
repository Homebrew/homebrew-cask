cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.19.0"
  sha256 arm:   "f75c6bb502f7bd6a258dcba027306136032298816d9386ca56e2f9e99c29db8c",
         intel: "41547d430e889f595d8d5cb0c5559cf48e3674c0a63286390edd179184219e2f"

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
