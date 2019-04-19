cask 'ringcentral' do
  version '11.0.1'
  sha256 'e24090317a0e3a83b7096f1092fc061077fead343e9445f17a2ca0b040086e2c'

  url "https://downloads.ringcentral.com/sp/RingCentralPhone-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://downloads.ringcentral.com/sp/RingCentralForMac'
  name 'RingCentral for Mac'
  homepage 'https://www.ringcentral.com/office/features/desktop-apps/overview.html'

  app 'RingCentral for Mac.app'
end
