cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.38"
  sha256 arm:   "cb77d1635b77ebe9e0e34d5c35f9f855c272b24156394d0282268c8a129dda1b",
         intel: "e38fa400fbafe1ec89af46c84c745ef3cfc12e98ae5ae8fb8cf8bb7a043116c4"

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
