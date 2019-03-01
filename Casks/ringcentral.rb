cask 'ringcentral' do
  version '10.3.5'
  sha256 'c69a4cfb44f844b6020558daafe1151037e15c35bf072ded8dfe1575c771ac71'

  url "https://downloads.ringcentral.com/sp/RingCentralPhone-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://downloads.ringcentral.com/sp/RingCentralForMac'
  name 'RingCentral for Mac'
  homepage 'https://www.ringcentral.com/office/features/desktop-apps/overview.html'

  app 'RingCentral for Mac.app'
end
