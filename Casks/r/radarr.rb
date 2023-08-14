cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "4.7.5.7809"
  sha256 arm:   "ab0b9cba9750088a5c7f1ed1d0706043d74b9d77f874565f0818641a4b77e6ad",
         intel: "ced9d5b8f11c448692c224b56526e4ffae1aa1585fd3a8cefd944f9c94c757eb"

  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Radarr/Radarr/"
  name "Radarr"
  desc "Fork of Sonarr to work with movies à la Couchpotato"
  homepage "https://radarr.video/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Radarr.app"

  zap trash: "~/.config/Radarr"
end
