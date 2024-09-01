cask "lidarr" do
  version "2.5.3.4341"
  sha256 "595cea9d087b9c6590271fc287df0817bd3137844b7006c8926eaf71139a84ae"

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
