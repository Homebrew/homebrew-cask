cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.20.6"
  sha256 arm:   "596911ea13b6e0f13c7e94cacc0889ae5c69416bbff3fd2e1a843c0221959a92",
         intel: "1412deceb227f09721365d44b9018adcd3c98b8785c680337edb8b069f45f6b5"

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
