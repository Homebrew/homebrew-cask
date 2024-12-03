cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.41"
  sha256 arm:   "31d6e2baa9dcb633cdcdc6da6bf5d78aa5dc6e5a30782c9feaf4a88c80fa4c96",
         intel: "2e5b30f7e8630ea75bed55bd5019bb7e2c49e1cd59e9fc4cccd9e11a7371f706"

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
