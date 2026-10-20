cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.20.5"
  sha256 arm:   "2b8a94b3204bc7b689fa43888d8dead1bc473631b13d066af29023773b7387c4",
         intel: "f10fe0a89077e3f4c149f4a0803e5780e7faec00047a9a557bc3e80f15f8653b"

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
