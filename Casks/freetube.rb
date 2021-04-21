cask "freetube" do
  version "0.12.0"
  sha256 "da7547fa3a79dd0b7bddde9c5f2434215b4b410bcacdb0ec0299a9e4bd057061"

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
