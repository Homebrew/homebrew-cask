cask 'ringcentral' do
  version '19.4.0'
  sha256 'f04cc4e35718aa1fe4fed4b9c0bb55d8984327e3aa30ef8bd99ac714c0ec102b'

  url "https://downloads.ringcentral.com/sp/RingCentralPhone-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads.ringcentral.com/sp/RingCentralForMac'
  name 'RingCentral for Mac'
  homepage 'https://www.ringcentral.com/apps/rc-phone'

  app 'RingCentral for Mac.app'
end
