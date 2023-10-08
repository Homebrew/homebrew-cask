cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.0.3.8127"
  sha256 arm:   "c0286e5b0ad75028e035d8a8feefa620d1d4b893d0562c3be2a8f87aaf9df180",
         intel: "5c32a20879d1723bef59918c01f4b07cb9d856a6a0ac76956bddd8213ce31621"

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
