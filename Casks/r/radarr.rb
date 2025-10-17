cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.28.0.10274"
  sha256 arm:   "99cf36895e44849e77fa70734c55c0073bc9fa3756ee81d62871f35ec0901545",
         intel: "17d22f8e8094a55b71da1a7b83269d66089fa61a7825460f7256e68f8a88d08a"

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

  app "Radarr.app"

  zap trash: "~/.config/Radarr"
end
