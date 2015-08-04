cask :v1 => 'proxpn' do
  version '4.1.4'
  sha256 '11e2edce81b6863f4365b4e7be2f6b1cf7cc019319a71f8806500c4626a8da71'

  url "https://www.proxpn.biz/updater/proXPN-MacOSX-10.5-#{version}.dmg"
  appcast 'https://www.proxpn.biz/updater/appcast.rss'
  name 'proXPN'
  homepage 'https://www.proxpn.biz/'
  license :freemium

  app 'ProXPN.app'
end
