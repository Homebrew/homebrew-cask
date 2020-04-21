cask 'ringcentral' do
  version '20.1.0'
  sha256 '2a16143b8b167783c19bd47e79fa7fd94d6d942efdc6a41e19b2cb0c4fbcd816'

  url "https://downloads.ringcentral.com/sp/RingCentralPhone-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads.ringcentral.com/sp/RingCentralForMac'
  name 'RingCentral for Mac'
  homepage 'https://www.ringcentral.com/apps/rc-phone'

  app 'RingCentral for Mac.app'
end
