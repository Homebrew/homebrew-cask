cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.6"
  sha256 arm:   "9986b1b9d91d0d5ef4052581a8eb8cea82a1733fdc7acf286bf3054832a46fad",
         intel: "6affffaf88190e32a6e2f37acd4ca68664a721626d890c0af8931aa86fe757db"

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
