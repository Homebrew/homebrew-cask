cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.11.11"
  sha256 arm:   "e0d360c68eb5a74acc8b7907533312744a09e3db181850b18d2069f724bd21cc",
         intel: "cef2e1bad385550cfbfafb17a6ce5ab4a2a9a7edb16a0094e1b87721bb7887c9"

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
