cask 'ringcentral' do
  version '19.3.0'
  sha256 '77db1037fe8c6255153f39921394bddc6ee74bad20c4ca415a7e1b7533e3ab16'

  url "https://downloads.ringcentral.com/sp/RingCentralPhone-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads.ringcentral.com/sp/RingCentralForMac'
  name 'RingCentral for Mac'
  homepage 'https://www.ringcentral.com/apps/rc-phone'

  app 'RingCentral for Mac.app'
end
