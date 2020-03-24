cask 'grandtotal' do
  version '6.1'
  sha256 '00f64502095248c5a30d77943feeff3d76a3fcc0c46c32cd1bb26ab6cad0895c'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
