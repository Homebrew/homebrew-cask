cask 'grandtotal' do
  version '5.2.3'
  sha256 '987bef144dc0a0034aa8a212469e1fd0ff9b34611f1be6ee66ac91da362ca14b'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  depends_on macos: '>= :mavericks'

  app 'GrandTotal.app'
end
