cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.15.2"
  sha256 arm:   "133440ab7e5464c4fa3329199075ace8bf26642336d719a9367409e264b39a7e",
         intel: "8e467407b4faf577804ff043b8ae16d432020c9ae95521e11e318972b33f4c35"

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
