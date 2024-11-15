cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.39"
  sha256 arm:   "f0b6656f3c9383c4aa8e92313758d9e5cc9256573d70deaca54c5cf2aa820578",
         intel: "52862a4297b01c0d105dc15920f81347a06ec981dbdc713dfa81aa731c56f594"

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
