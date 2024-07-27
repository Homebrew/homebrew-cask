cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.21.2.4649"
  sha256 arm:   "999b750f6a39026161bf857aded49db55dc82d2f10fad30f48d3e1e9c156c8e6",
         intel: "843d3bb1ea6be3dcda0c1c3a0ba836ab3f3355fd942e7b11083f04ed77c0d9ba"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"
end
