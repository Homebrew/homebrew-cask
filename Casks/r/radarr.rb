cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.18.4.9674"
  sha256 arm:   "c03290598f335aca3a5853703e3f9a2500e9191752e9a0b8f27f26dfdfc50d5b",
         intel: "13da0ee58cc7096d0ef2a8af851bbc027b6361d4f44ef0a975625a48b6b022a1"

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
