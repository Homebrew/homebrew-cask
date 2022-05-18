cask "cajviewer" do
  version "2.0,10"
  sha256 :no_check

  url "http://viewer.d.cnki.net/CAJ%E4%BA%91%E9%98%85%E8%AF%BB.dmg"
  name "CAJViewer"
  name "CAJ云阅读"
  homepage "https://cajviewer.cnki.net/cajcloud/cajdownload.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "CAJ云阅读.app"
end
