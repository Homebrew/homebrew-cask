cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.32.2.4987"
  sha256 arm:   "7e7897bfc9e5fcc99b85ca4be6f619a7685b3cd83c791184e89a136d15dbdc1e",
         intel: "2527fc3fcc5e9e194f872831da2a16ecaea11c2f7b1972455034b9fb1c85fd63"

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
