cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.7.4.3769"
  sha256 arm:   "2abb29d91bde86f4ff94f6809e85f1c254290e90a969368a146ef06183d65576",
         intel: "33cffa0dd5000644c9a82c0f3bd7a5478c8da74adaeb2f7cbfa128e13746d412"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"
end
