cask 'proxpn' do
  version '4.3.4'
  sha256 'd0d5476bec2f5f6f894d57087d628284d7f0f02ef8b98e23630765010933898b'

  url "https://www.proxpn.biz/updater/proXPN-MacOSX-10.5-#{version}.dmg"
  appcast 'http://www.proxpn.biz/updater/appcast.rss',
          :sha256 => '0487a0953cec02f34b9bae9cc998e0d55832e5126e9e3227435995b9f93191d7'
  name 'proXPN'
  homepage 'https://www.proxpn.biz/'
  license :freemium

  app 'ProXPN.app'
end
