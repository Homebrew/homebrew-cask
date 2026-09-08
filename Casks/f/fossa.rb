cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.18.3"
  sha256 arm:   "868c7c7a6309107401283ad35e1a458d026c35257148df13695d1cc92201c210",
         intel: "709dc0b1236cd85a1080c08fc0b61c0c1878efcabbca20bfbe7f2c6639bb9504"

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
