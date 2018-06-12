cask 'grandtotal' do
  version '5.1.6.3'
  sha256 '09fad1f55bfc4d4d099b1e5a40695edfe06e2ae73de1445130c692f043972e65'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  depends_on macos: '>= :mavericks'

  app 'GrandTotal.app'
end
