cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.15.8"
  sha256 arm:   "43838ee859b343f4277324bb97b2e635bd3db0fb705a27edff9b7a721d5bde72",
         intel: "bc8a889e4fc479101980d3f16a1af7a6e2d7633573e73ca0280a63b718c375d4"

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
