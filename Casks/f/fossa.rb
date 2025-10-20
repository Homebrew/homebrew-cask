cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.11.12"
  sha256 arm:   "1c301759b6f21c707828ea7b4ffeb9cbf95695e99f2c7a9116a4b6c8bce28442",
         intel: "45650c805364a74c7512f7ed0f367c4aa9e956a6176c46bf63a54e07309b0471"

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
