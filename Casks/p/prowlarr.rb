cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.12.2.4211"
  sha256 arm:   "05bc5e481ad32124a0b5089ebe94472944eab7802c7d05151272f720b457ddea",
         intel: "9f08bf661acf2a00b9481687777cc056d4d8703355567f91785300c29d452854"

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
