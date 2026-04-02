cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.16.7"
  sha256 arm:   "daaf9594cb2899b6ca34ea03d064a2db7dbdb683aa6d1ed7cc8d1d7202711e8e",
         intel: "43b3a5dd3c6af9aa18fd7736e2f1b4da2ff13209d0afc341e6f3809d3dc5d192"

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
