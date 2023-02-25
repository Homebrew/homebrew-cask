cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.2.2.2699"
  sha256 arm:   "8e5537913785e90c087d3a383ca38867bdf4358e3a20561aad8792babe6b12f0",
         intel: "b0156fb969c24f4c846eab65e16795955215a7608f5129283c111d43312211c3"

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
