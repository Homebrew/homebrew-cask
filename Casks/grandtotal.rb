cask 'grandtotal' do
  version '6.1.1'
  sha256 '2263034d553a546d1c678db8ff60d9d60965c22aba8fc9ee755ff00ae1ff7e7c'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
