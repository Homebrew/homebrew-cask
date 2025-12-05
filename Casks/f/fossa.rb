cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.14.1"
  sha256 arm:   "ed663cfc5f774adfa6f186f7b74f0ae359a3bb0bf17a561133221e713228dbc6",
         intel: "6c4a92966cf379fb668a58b9e6bca687d807785f413e9279a10bb621cba59118"

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
