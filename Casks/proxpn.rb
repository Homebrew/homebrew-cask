cask 'proxpn' do
  version '4.3.6.7'
  sha256 '0bb86b819bf4b4ab5a3136b4ee4640a99f21f3cfc211f89dd07813030d7c8bfb'

  url "https://www.proxpn.com/updater/proXPN-MacOSX-10.7-#{version}.dmg"
  appcast 'https://www.proxpn.com/updater/appcast.rss',
          checkpoint: '873ccf8cdb7488f1231cb2810e7a4f19d1d2602f11fc6a5e5a9604ebd77383c6'
  name 'proXPN'
  homepage 'https://www.proxpn.com/'

  depends_on macos: '>= :leopard'

  app 'ProXPN.app'
end
