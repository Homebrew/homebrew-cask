cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "0.4.4.1947"
  sha256 arm:   "9b6da817a4bc94452177ecdeb08e3d9624a82db2a138451ce1e4cac9c5a974b0",
         intel: "2ed10f8e52d2541decf293f690ace57c162fc55aac6395218884e2e68eb4694d"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.develop.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  # No zap stanza required
end
