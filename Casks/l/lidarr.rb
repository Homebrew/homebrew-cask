cask "lidarr" do
  arch arm: "arm64", intel: "x64"

  version "2.10.3.4602"
  sha256 arm:   "e9be34421a93d4979bd0062921a1917c7b9d4dbee1d904b1db8f0f5b37248220",
         intel: "0d494393e47b8157df34cdd6fc21011923216caf0f7fa2409da1387119c98ff1"

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
