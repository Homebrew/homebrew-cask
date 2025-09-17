cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.11.10"
  sha256 arm:   "330bc1e1baa09519dba084b0cf915dbe45450edf039caf978a6ff6f8c3ca5ce1",
         intel: "126904d2ea05945562a20e52d939f348a61c5768d441109219f167e9737711e6"

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
