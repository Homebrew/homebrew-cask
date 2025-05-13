cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.8"
  sha256 arm:   "a6880c156381bd41f94ef41a6f8b5804b8b8313347f9e05ea636bf010549ca78",
         intel: "a51674482acd2446aea858c34ad6d03fce2c754d8c097f71c51bd414308468d0"

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
