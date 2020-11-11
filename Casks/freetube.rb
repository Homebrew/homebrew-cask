cask "freetube" do
  version "0.9.2"
  sha256 "e32fd7babaca4371cbe53bf93ae2854e571c484f5d05d93c15f0b1c5187b0d2c"

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
