cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.15.4"
  sha256 arm:   "5402079f9f17d4828001637044a54379277729dbb9eeac77d6a22a8836185264",
         intel: "9c5d866959e71ea4306b409f8b48c170af4790ca2c48b9d28dd158dbb649f00e"

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
