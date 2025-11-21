cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.13.1"
  sha256 arm:   "53fa9dd5055ed8de9359e61e6fa485c5164175797e5ef6542813580a89eaac45",
         intel: "77955cf4909835a4a36c41562dedbd2d1f66fe6b3bc6274c6091e32165b897c2"

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
