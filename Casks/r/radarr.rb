cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "6.3.0.10514"
  sha256 arm:   "ed6867765d2f2e4c2078ff4ff09e78e095fe099ec819c53a9b3ab7337ee7535b",
         intel: "53bf92455987cf5f5baa0425bc2033c04b361cc5af443b1c9b11391c10112711"

  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Radarr/Radarr/"
  name "Radarr"
  desc "Fork of Sonarr to work with movies à la Couchpotato"
  homepage "https://radarr.video/"

  livecheck do
    url "https://radarr.servarr.com/v1/update/master/changes?os=osx&arch=#{arch}"
    strategy :json do |json|
      json.map { |item| item["version"] }
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: :big_sur

  app "Radarr.app"

  zap trash: "~/.config/Radarr"
end
