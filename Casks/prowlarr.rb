cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1.2210"
  sha256 arm:   "68d912f8ade1c4bacb693f299060fcb32b2338fad424c4487ef69b171181f994",
         intel: "b600369d9a43be76e57d5c2d6f66acb278d3a7259ce84eb69d2d27af6a723d7a"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.develop.#{version}.osx-app-core-#{arch}.zip",
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
