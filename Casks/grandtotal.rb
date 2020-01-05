cask 'grandtotal' do
  version '6.0.6'
  sha256 'b3eb79cd2cf6a676e59e8fa8f949e9c44825662fb5223dc5ec960bf876c39749'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
