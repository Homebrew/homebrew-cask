cask "freetube" do
  version "0.11.1"
  sha256 "d86f1a5fd117ea23b335d1463c2bd22aee586de718208bf455efab7e210e4d6b"

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
