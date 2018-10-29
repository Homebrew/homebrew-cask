cask 'grandtotal' do
  version '5.2.1'
  sha256 '6c2617d839623af46215b2936815fbb7508016e529a2b783ca7900691ae24578'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  depends_on macos: '>= :mavericks'

  app 'GrandTotal.app'
end
