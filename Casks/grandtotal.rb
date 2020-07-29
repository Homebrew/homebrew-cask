cask 'grandtotal' do
  version '6.1.4'
  sha256 'ee8ac2e94c217f55a20713de8bd5e337098fc63435a7480bc08dbb8f226249b8'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
