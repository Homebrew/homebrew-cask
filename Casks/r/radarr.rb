cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.1.3.8246"
  sha256 arm:   "cc6a103f2128f5e588b8f7ef248f8326226a2d6f70deaa5a64b5c1b30c2b28d2",
         intel: "0ce43a4792c27a4dd76bdf1538100832d6a027b93acd14c08de9827ef879b094"

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
