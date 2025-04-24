cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.7"
  sha256 arm:   "6e4d99859422471bfdf9969c2f915804c506b3e7155496232cc98b0b899c9848",
         intel: "d4a4f7641f9da6942f3c8b3b93b56e201e7bd6a389be25281f7f7c466d372986"

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
