cask 'grandtotal' do
  version '4.3.2'
  sha256 'eb044df5241ce444466128e04797006bd5c89910bf33752cfa6129695bdac1ed'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: 'a1233d2d6a52f00d24113ebab4243043071e86da1477a322e86d6d126bacfb03'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
