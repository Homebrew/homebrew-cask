cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "4.2.4.6635"
  sha256 arm:   "b8bbec0677c5e50a73d3a52b84f72d036d830bb5004659743f5327bf238b319f",
         intel: "8b491adf6b72a20d20bf2a6e5e6b0e9f77f1ca236a4d5ccb9bb74d10a8e86319"

  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Radarr/Radarr/"
  name "Radarr"
  desc "Fork of Sonarr to work with movies à la Couchpotato"
  homepage "https://radarr.video/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Radarr.app"

  zap trash: [
    "~/.config/Radarr",
  ]
end
