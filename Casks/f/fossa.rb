cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.11.9"
  sha256 arm:   "452eae0b69aa4cf48bebca4a1614653f124937ba1e60fbda15db805fb8274cd3",
         intel: "bb74316e0c8daecc08d9dc0229e3d6595d206d1ed213afe29e7fd0e50c31ed43"

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
