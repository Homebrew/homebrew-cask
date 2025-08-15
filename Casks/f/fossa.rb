cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.11.2"
  sha256 arm:   "23fe7a5a2aecbdfaba3bda8b9740f52eee872a6ebd04b3c61659dd7222454414",
         intel: "d87cbf987b98a805a9f2a560c21e198834a8b2b19d0d513d4273ac45d5b1e17c"

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
