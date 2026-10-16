cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.20.3"
  sha256 arm:   "e030f5f1ea70dd5cd8969db29e8ff9994e301fd492de66581bda3750bc9cce94",
         intel: "8419fca2c2a42209b041ab48574f287cdba4505560f4a478277845739e27707b"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip"
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
