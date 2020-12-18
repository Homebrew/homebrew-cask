cask "freetube" do
  version "0.10.0"
  sha256 "2a86d3cdba6613af13f83170a07934bf7507052e83ace94c7382f2621756e459"

  url "https://github.com/FreeTubeApp/FreeTube/releases/download/v#{version}-beta/freetube-#{version}-mac.dmg"
  appcast "https://github.com/FreeTubeApp/FreeTube/releases.atom"
  name "FreeTube"
  desc "YouTube player focusing on privacy"
  homepage "https://github.com/FreeTubeApp/FreeTube"

  app "FreeTube.app"

  zap trash: [
    "~/Library/Application Support/FreeTube",
    "~/Library/Preferences/io.freetubeapp.freetube.plist",
    "~/Library/Saved Application State/io.freetubeapp.freetube.savedState",
  ]
end
