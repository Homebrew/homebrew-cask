cask "freetube" do
  version "0.11.3"
  sha256 "5a0f53ca2deaffa5be44bebdd17600a75105a10a36a96f70d2b78c1af68955cf"

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
