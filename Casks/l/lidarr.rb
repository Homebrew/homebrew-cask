cask "lidarr" do
  arch arm: "arm64", intel: "x64"

  version "2.8.2.4493"
  sha256 arm:   "859195773d5bcf17aa94f48cdd7ac76069e5617637331ac4605891f4b1f122f0",
         intel: "0e833eb24f56c0c5be8f34f2feb0fdf806339fc4b85d8bc5361924e9ecb6bd33"

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
