cask :v1 => 'proxpn' do
  version '4.0.6'
  sha256 '32d73233fb8469781e8479ecdd5af87b2ef1694c03e02e4c42ab11f3d2e7bae6'

  url "https://www.proxpn.biz/updater/proXPN-MacOSX-10.5-#{version}.dmg"
  appcast 'https://www.proxpn.biz/updater/appcast.rss'
  name 'proXPN'
  homepage 'https://www.proxpn.biz/'
  license :freemium

  app 'ProXPN.app'
end
