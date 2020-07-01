cask 'grandtotal' do
  version '6.1.6'
  sha256 '063a28ad193056d288d3ad1514df90c1d232ed8c80f572bfc834cd57843f25ae'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
