cask "lidarr" do
  version "0.7.2.1878"
  sha256 "088c57c8c15b3fd5dd14e7aa4399b1497fc5cff53217b5705e339e7608e5555f"

  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.master.#{version}.osx-app.zip",
      verified: "github.com/lidarr/Lidarr/"
  name "Lidarr"
  desc "Looks and smells like Sonarr but made for music"
  homepage "https://lidarr.audio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Lidarr.app"
end
