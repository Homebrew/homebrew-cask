cask 'grandtotal' do
  version '5.1.6'
  sha256 '876884c0ea61177feda2333cdd0506b537b3309ed62e9f452ecfe93c952f8a7b'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: '0b2fa9f3239db87404ea1e2b821f3213e232a3cc1e2ec5b8ea6089a1070b601c'
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  depends_on macos: '>= :mavericks'

  app 'GrandTotal.app'
end
