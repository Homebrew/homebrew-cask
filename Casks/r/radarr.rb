cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.22.4.9896"
  sha256 arm:   "531b1dade44a8bbc717ed395e781ce6320107a791b651564288d1d9485a37e38",
         intel: "cdc7db16f193b69e329d0281df291e08fef46c047b401ee5b40f24164a19956a"

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

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Radarr.app"

  zap trash: "~/.config/Radarr"
end
