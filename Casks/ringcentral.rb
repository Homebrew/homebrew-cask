cask 'ringcentral' do
  version '11.0.2'
  sha256 '23612cd8bb036d99bd127161e82f82367053e811549203aad8b1e75183ac1c65'

  url "https://downloads.ringcentral.com/sp/RingCentralPhone-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads.ringcentral.com/sp/RingCentralForMac'
  name 'RingCentral for Mac'
  homepage 'https://www.ringcentral.com/office/features/desktop-apps/overview.html'

  app 'RingCentral for Mac.app'
end
