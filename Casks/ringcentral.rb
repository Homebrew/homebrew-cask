cask 'ringcentral' do
  version '19.3.4'
  sha256 'd45d945fc9e6e723a989901ef9e4f7e33c9245b8e3b23d36b3623c2bc6fc1fc3'

  url "https://downloads.ringcentral.com/sp/RingCentralPhone-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads.ringcentral.com/sp/RingCentralForMac'
  name 'RingCentral for Mac'
  homepage 'https://www.ringcentral.com/apps/rc-phone'

  app 'RingCentral for Mac.app'
end
