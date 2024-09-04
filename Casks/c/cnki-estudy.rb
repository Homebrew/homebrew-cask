cask "cnki-estudy" do
  version "4.3.1"
  sha256 :no_check

  url "https://download.cnki.net/CNKI%20E-Study%20For%20Mac.dmg"
  name "cnki-estudy"
  name "知网研学"
  desc "Academic research platform"
  homepage "https://x.cnki.net/web/search/#/home"

  livecheck do
    url :url
    strategy :extract_plist do |item|
      item["net.cnki.EStudy"]&.short_version
    end
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
