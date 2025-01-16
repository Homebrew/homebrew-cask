cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.43"
  sha256 arm:   "e982c530d098675618bdf727ebfb8abec36c966d0a870d93bd02c0fbd18f679d",
         intel: "13d1813f4fcf28ad69f4799c0ff2d802075910d2a2ee815d9f49c067746f6ada"

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
