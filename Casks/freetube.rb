cask "freetube" do
  version "0.8.0"
  sha256 "f337b214abccf3aa2dfcdb50ffc2795be38c3aebc464aec616c2bb033d466170"

  url "https://github.com/FreeTubeApp/FreeTube/releases/download/v#{version}-beta/freetube-#{version}-mac.dmg.zip"
  appcast "https://github.com/FreeTubeApp/FreeTube/releases.atom"
  name "FreeTube"
  homepage "https://github.com/FreeTubeApp/FreeTube"

  app "FreeTube.app"

  zap trash: [
    "~/Library/Application Support/FreeTube",
    "~/Library/Preferences/io.freetubeapp.freetube.plist",
    "~/Library/Saved Application State/io.freetubeapp.freetube.savedState",
  ]
end
