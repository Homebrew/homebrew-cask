cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "2.3.5.5327"
  sha256 arm:   "4789207f207a4e19238c40bc02f9eafbdc8376c2412802b8d3d3614cea5c5079",
         intel: "277a46f41251e9e6f8138e30600d74dddc37a5638089f8f346ec9eac2c295ea3"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  livecheck do
    url "https://prowlarr.servarr.com/v1/update/master/changes?os=osx&arch=#{arch}"
    strategy :json do |json|
      json.map { |item| item["version"] }
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"
end
