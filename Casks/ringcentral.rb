cask 'ringcentral' do
  version '10.3.2'
  sha256 '2cb11a5f8be4c68f8969918a5e24f96d4895870d030e3bf80ae291967fdd646f'

  url "https://downloads.ringcentral.com/sp/RingCentralPhone-#{version}.dmg"
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_redirect.cgi?url=http://downloads.ringcentral.com/sp/RingCentralForMac'
  name 'RingCentral for Mac'
  homepage 'https://www.ringcentral.com/office/features/desktop-apps/overview.html'

  app 'RingCentral for Mac.app'
end
