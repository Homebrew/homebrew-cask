cask 'proxpn' do
  version '4.3.4'
  sha256 'd0d5476bec2f5f6f894d57087d628284d7f0f02ef8b98e23630765010933898b'

  url "https://www.proxpn.biz/updater/proXPN-MacOSX-10.5-#{version}.dmg"
  appcast 'http://www.proxpn.biz/updater/appcast.rss',
          :sha256 => '15a0e664b0ccf65a18602c95e426cb01d8b2f169f43e2f3a9a13bd7ea2339836'
  name 'proXPN'
  homepage 'https://www.proxpn.biz/'
  license :freemium

  app 'ProXPN.app'
end
