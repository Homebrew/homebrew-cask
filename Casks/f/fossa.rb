cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.4"
  sha256 arm:   "8ab02f6d4fd60780bb40ea2076d9c15c525261b2b33732b7c6e49e3512d96887",
         intel: "7b4a97c62d5a9aa3d55616b35b5c9916d40cf620e6f92329acac82f536cd6c95"

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
