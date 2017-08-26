cask 'proxpn' do
  version '5.0.0.0'
  sha256 'dfba1633e886f56c124283b2005fbb63a2704db1c539fa645b316c5b10831dcb'

  url "https://www.proxpn.com/updater/proXPN-MacOSX-10.7-#{version}.dmg"
  appcast 'https://www.proxpn.com/updater/appcast.rss',
          checkpoint: 'a3ae70769f37488f80b4566f8f8eba45097a08725873ad6262a09e2eb8ba0859'
  name 'proXPN'
  homepage 'https://www.proxpn.com/'

  depends_on macos: '>= :leopard'

  app 'ProXPN.app'
end
