cask 'grandtotal' do
  version '5.3'
  sha256 'e37ad37057e8ac1f514399ab05ef36cdbda0f7f678fd1cdf4ef1fdfe63acb312'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
