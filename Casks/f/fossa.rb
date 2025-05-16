cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.9"
  sha256 arm:   "b93b787bf4def1cfff842797b22885887dc6aa8f14000706dfeb63b1fb84b596",
         intel: "1694d99576df8823a2a87b8572167d24639dae7c16a2b4cea682b3c8b554c4e1"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "FOSSA"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "fossa"

  # No zap stanza required
end
