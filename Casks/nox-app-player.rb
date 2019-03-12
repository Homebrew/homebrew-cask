cask 'nox-app-player' do
  version '1.2.6.0'
  sha256 '7499ea4e4adaf62b0c14594d8fbe2773a2ec44ed1d2139a07c119dab49ce9130'

  url "https://res06.bignox.com/full/20190109/2e91ffc9401f40efa3a19e3b75667ee2.dmg?filename=Nox_installer_for_mac_v#{version}_intl.dmg"
  name 'Nox App Player'
  homepage 'https://www.bignox.com/'

  app 'Nox App Player.app'
end
