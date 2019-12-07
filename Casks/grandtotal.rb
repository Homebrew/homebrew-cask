cask 'grandtotal' do
  version '6.0.2'
  sha256 'dfd904a27ea6608bb615e5433608804f6d0744777d3bd3419f221bbcb6c775a4'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
