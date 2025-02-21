cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.48"
  sha256 arm:   "f1acd9f1e3624960a282beb9f1fd9e19a39cba5cc2e4c8a7c5153157a93607e0",
         intel: "4bad7cb20695529c62159b6e7427699e89acef400c4205108100a9e860616571"

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
