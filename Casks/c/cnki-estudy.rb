cask "cnki-estudy" do
  version "4.3.1"
  sha256 "013b4a25f82183227bb05daf34d148716bda20f34f9ff3029b503e8a38b438ca"

  url "https://picx.cnki.net/estudy/CNKI%20E-Study%20For%20Mac#{version}.dmg"
  name "cnki-estudy"
  name "知网研学"
  desc "Academic research platform"
  homepage "https://estudy.cnki.net/"

  livecheck do
    url :homepage
    regex(/Mac(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :sierra"

  app "知网研学.app"

  zap trash: [
    "~/Library/Caches/net.cnki.EStudy",
    "~/Library/HTTPStorages/net.cnki.EStudy",
    "~/Library/HTTPStorages/net.cnki.EStudy.binarycookies",
    "~/Library/Preferences/net.cnki.EStudy.plist",
  ]
end
