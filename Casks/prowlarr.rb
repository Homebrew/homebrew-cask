cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "0.4.9.2083"
  sha256 arm:   "9bdd4f4e6d2bae3905c75b60ec50f8086d0df331d2283e026ce31524c9dcc950",
         intel: "981004e1c84882a18a5faa5a44fbcba7c71fc55b74025789e295f876c9b90a7b"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.develop.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  # No zap stanza required
end
