cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.27.5.10198"
  sha256 arm:   "8fb4a0977e22d2277227f5625be16a3ce30b6be81003d723f3c658f769d059ea",
         intel: "d2f25ea29f9cd4b6dc08d1a0a87d91244d8c3358be1fecae601c5fbbdea25444"

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
  depends_on macos: ">= :catalina"

  app "Radarr.app"

  zap trash: "~/.config/Radarr"
end
