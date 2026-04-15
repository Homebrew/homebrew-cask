cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.17.1"
  sha256 arm:   "654864dc334439e2f3eb1d0e69fc2576ceb38241267ddd3434c5ae28157b4209",
         intel: "0d78e1295786f95d1e7567532378416d68195fb2b5bf2d079cc76d2ea58533ed"

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
