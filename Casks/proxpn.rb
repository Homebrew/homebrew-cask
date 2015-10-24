cask :v1 => 'proxpn' do
  version '4.2.2'
  sha256 '301ad32f944911628448228c46fc6ae98e87959e9ed54fc49aff175da496a8b3'

  url "https://www.proxpn.biz/updater/proXPN-MacOSX-10.5-#{version}.dmg"
  appcast 'https://www.proxpn.biz/updater/appcast.rss'
  name 'proXPN'
  homepage 'https://www.proxpn.biz/'
  license :freemium

  app 'ProXPN.app'
end
