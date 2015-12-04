cask :v1 => 'proxpn' do
  version '4.3.4'
  sha256 'd0d5476bec2f5f6f894d57087d628284d7f0f02ef8b98e23630765010933898b'

  url "https://www.proxpn.biz/updater/proXPN-MacOSX-10.5-#{version}.dmg"
  appcast 'https://www.proxpn.biz/updater/appcast.rss'
  name 'proXPN'
  homepage 'https://www.proxpn.biz/'
  license :freemium

  app 'ProXPN.app'
end
