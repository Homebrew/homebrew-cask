cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.20.4"
  sha256 arm:   "0b7868038dea34bb87c71ae07fd354c7c22c851145eeb8b487ed410c07e31800",
         intel: "8fff75771ab6f59cd348ca462274e82922397748eebc38285bd2a89a8c24f181"

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
