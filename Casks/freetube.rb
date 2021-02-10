cask "freetube" do
  version "0.11.2"
  sha256 "307ad9a1eb3dbc483bf26543e16f4a1ba52eacfc6acdfbfc90bad05aa1aaf5d3"

  url "https://github.com/FreeTubeApp/FreeTube/releases/download/v#{version}-beta/freetube-#{version}-mac.dmg"
  name "FreeTube"
  desc "YouTube player focusing on privacy"
  homepage "https://github.com/FreeTubeApp/FreeTube"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*)/i)
  end

  app "FreeTube.app"

  zap trash: [
    "~/Library/Application Support/FreeTube",
    "~/Library/Preferences/io.freetubeapp.freetube.plist",
    "~/Library/Saved Application State/io.freetubeapp.freetube.savedState",
  ]
end
