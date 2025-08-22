cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.11.3"
  sha256 arm:   "7d0a333635e39cff5be0d8e7392b72775bb9ef5333f21ae056e613706079f292",
         intel: "ab5ee4a5c1cdb562506a8b0c5bd86bd7ce6a3cba2dc135707612885c3fc228ea"

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
