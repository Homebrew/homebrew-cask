cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.26.1.4844"
  sha256 arm:   "26fae9f03c578d243d9f5eba8d9705aa46161ea5c8b81750d29679200796b91c",
         intel: "9e535158358fc98deb0d24de281d558d6d349a3529d9293a09ce16e2c4068c60"

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
