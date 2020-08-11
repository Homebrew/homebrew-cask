cask "lidarr" do
  version "0.7.1.1381"
  sha256 "b02ee13d37f2d24761297524f60a960c76e09acb7111e341bb3a0d6cb0eda05e"

  # github.com/lidarr/Lidarr/ was verified as official when first introduced to the cask
  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.master.#{version}.osx-app.zip"
  appcast "https://github.com/lidarr/Lidarr/releases.atom"
  name "Lidarr"
  desc "Looks and smells like Sonarr but made for music"
  homepage "https://lidarr.audio/"

  app "Lidarr.app"
end
