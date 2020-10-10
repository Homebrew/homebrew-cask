cask "freetube" do
  version "0.9.0"
  sha256 "b115f1fa06b53c196f24a2051a745277dc63841d74046ad23029870db45b184b"

  url "https://github.com/FreeTubeApp/FreeTube/releases/download/v#{version}-beta/freetube-#{version}-mac.dmg.zip"
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
