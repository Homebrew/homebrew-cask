cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.16"
  sha256 arm:   "4a92233450ba84dea9748795e6decef1c72edd80f6bc1fdb1822b0398689a6f4",
         intel: "95c02ac78d02ba71a98aaf4e3990bd5d8419d49bb066d7bcc02db5940a22ad51"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "FOSSA"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "fossa"

  # No zap stanza required
end
