cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.13"
  sha256 arm:   "440878ecdc8a7a42e8fcb680cecbbcbec61e750e8be17f79e2c1196da512a598",
         intel: "3c9295410a11c118853924370aaf5a5bf1792d7bde5eb511abb504616e23e382"

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
