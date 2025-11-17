cask "estudy" do
  version "4.4,360"
  sha256 "f9c710cf239fd38e4680cf51cf0d455078a4dbf0938c880e939a05727690f9ea"

  url "https://piccachex.cnki.net/estudy/CNKI%20E-Study%20For%20Mac#{version.csv.first}.dmg"
  name "estudy"
  name "知网研学"
  desc "Academic research and learning platform"
  homepage "https://estudy.cnki.net/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "知网研学.app"

  zap trash: [
    "~/Library/Caches/net.cnki.EStudy",
    "~/Library/HTTPStorages/net.cnki.EStudy",
    "~/Library/HTTPStorages/net.cnki.EStudy.binarycookies",
    "~/Library/Preferences/net.cnki.EStudy.plist",
  ]
end
