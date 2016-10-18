cask 'proxpn' do
  version '4.3.6.5'
  sha256 '3c05b5f55ec416c167af536d34547a2d89828c31dd6d86f844ac6c316c18d10a'

  url "https://www.proxpn.com/updater/proXPN-MacOSX-10.7-#{version}.dmg"
  appcast 'https://www.proxpn.com/updater/appcast.rss',
          checkpoint: '5513dc0660f661331ad6361b962ef19a4780b52f6e34464f7e9da403853e9325'
  name 'proXPN'
  homepage 'https://www.proxpn.com/'

  depends_on macos: '>= :leopard'

  app 'ProXPN.app'
end
