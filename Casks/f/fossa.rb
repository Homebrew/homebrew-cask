cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.45"
  sha256 arm:   "0713f251ee824e154f8aa8f5595bf1ddcfb249720c37e4bf88cc97315bd2ee8f",
         intel: "3315820809409ee5c9de51557ff5d9c444aa701df445b838540f11b4ddaea340"

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
