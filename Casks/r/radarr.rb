cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "6.0.4.10291"
  sha256 arm:   "bd0ad6a189abd55e6d98dba0747af3f084b95158fc4908b56d831f20558ae7cd",
         intel: "c7767552123b947a928ccc99c80a76912ec0358ff2c8f7442aae69f0c1e5c13b"

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
  depends_on macos: ">= :big_sur"

  app "Radarr.app"

  zap trash: "~/.config/Radarr"
end
