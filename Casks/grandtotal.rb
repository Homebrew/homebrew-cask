cask 'grandtotal' do
  version '6.1.7'
  sha256 'd864d575debdabc65291628c6d2a4b643cc1146ba689fd564ea56fd079f8aecf'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
