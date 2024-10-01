cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.36"
  sha256 arm:   "81d2b131aa2a6d4328fc6e966f64204acbadadcc21f06681c6b4e8e37e0e69a6",
         intel: "307cfff46d9d447ab611ffaaf354f047a700fd2d6ddcefa08975acad0cafce90"

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
