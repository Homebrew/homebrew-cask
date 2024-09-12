cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.33"
  sha256 arm:   "8bab24aa959c426e96c871efb0d6aa9cdb9ad19c6f62b561ae4bd912cfbbca97",
         intel: "fe1a6e2b474e6c84bd5482dcd147ce305960744e5037a8c26c8f010b0de46da8"

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
