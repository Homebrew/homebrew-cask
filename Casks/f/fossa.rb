cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.5"
  sha256 arm:   "da8d1335592d5970ae798d30bb67719bb091868898596d83c727029e9deabf77",
         intel: "b804c182105c93b82582f4e1b1ec986ea01cad04200fbf186721ee9008d558f9"

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
