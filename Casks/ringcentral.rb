cask 'ringcentral' do
  version '19.3.2'
  sha256 '4bb84b822082e0a8cbeac4f512fefebf9bcceb6b7e3565aa351eddfc354753a9'

  url "https://downloads.ringcentral.com/sp/RingCentralPhone-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads.ringcentral.com/sp/RingCentralForMac'
  name 'RingCentral for Mac'
  homepage 'https://www.ringcentral.com/apps/rc-phone'

  app 'RingCentral for Mac.app'
end
