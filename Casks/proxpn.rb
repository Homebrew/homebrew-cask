cask 'proxpn' do
  version '4.5.0.0'
  sha256 '7f636d130502f530ecef224664474e746dd30b258fbd62c7b939b0ddb386d1b1'

  url "https://www.proxpn.com/updater/proXPN-MacOSX-10.7-#{version}.dmg"
  appcast 'https://www.proxpn.com/updater/appcast.rss',
          checkpoint: 'a3ae70769f37488f80b4566f8f8eba45097a08725873ad6262a09e2eb8ba0859'
  name 'proXPN'
  homepage 'https://www.proxpn.com/'

  depends_on macos: '>= :leopard'

  app 'ProXPN.app'
end
