cask "lidarr" do
  arch arm: "arm64", intel: "x64"

  version "2.9.6.4552"
  sha256 arm:   "1df5907b8d7c9b3876f3800a53608f02d2fb4dc146b4460fa09a2acb99d8cd8e",
         intel: "775f3b658653b25a0b7d87fb559753925f4cc7dbcb470ab6e65f42f2415da688"

  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/lidarr/Lidarr/"
  name "Lidarr"
  desc "Looks and smells like Sonarr but made for music"
  homepage "https://lidarr.audio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Lidarr.app"

  zap trash: "~/.config/Lidarr/"
end
