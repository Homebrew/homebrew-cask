cask 'grandtotal' do
  version '6.1.3'
  sha256 '7b231677f4514a9c62b8c061291a0f39dbecd6f005cded8d3ceab0ec518a1aaf'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
