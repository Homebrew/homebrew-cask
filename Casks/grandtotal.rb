cask 'grandtotal' do
  version '6.0.5'
  sha256 '22f389dd83e1f90cfb82097a02ef5f045a9fb2c3396d7f2096667bc26cd25ab3'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
