cask "freetube" do
  version "0.9.3"
  sha256 "b2ed294a35e1aad885cdbaa80256d0705d2806bfffe27ffbf0cf4edc460b8478"

  url "https://github.com/FreeTubeApp/FreeTube/releases/download/v#{version}-beta/freetube-#{version}.dmg"
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
