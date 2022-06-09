cask "lidarr" do
  version "1.0.2.2592"
  sha256 "cde83e5330572f05d0d4bf981391a55344fd602946cdf0918aa48f886b8c02d9"

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
end
