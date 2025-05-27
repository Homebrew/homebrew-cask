cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.25.0.10024"
  sha256 arm:   "787aa3ccd0606ca52af907e8eb177ab124225e030174fb286d9a94ccb8dfce92",
         intel: "4879a7507b0537c2ef08e4e028ec4991836629c3f13e8c3ea041773c63321d85"

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
