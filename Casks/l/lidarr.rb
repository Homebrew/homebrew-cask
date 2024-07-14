cask "lidarr" do
  version "2.4.3.4248"
  sha256 "bad36ef68b2ac7e3f797400d98812c1f0613af5bebd334b43553c0429ebd3ea5"

  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.master.#{version}.osx-app-core-x64.zip",
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

  caveats do
    requires_rosetta
  end
end
