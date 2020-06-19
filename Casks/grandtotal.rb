cask 'grandtotal' do
  version '6.1.5'
  sha256 '11781c4c328da56e6142974eb124364900f03458b8f085d0457e20b4d1e18d1a'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
