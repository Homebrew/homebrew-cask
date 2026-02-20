cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.15.9"
  sha256 arm:   "19cc47b11bf72624356425855e7cc79a6f4373af10c561548fa556c28109c818",
         intel: "736e74f11f3fe44f0adf0ecb488b7657d1e4742a7995c7e3c79849469d496515"

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
