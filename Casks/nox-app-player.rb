cask 'nox-app-player' do
  version '1.2.5.0'
  sha256 'cf51eadb253f7c997c20cd8b3a08833f4761bcba336f6ba00631bf5d54ca23e3'

  url "https://res06.bignox.com/full/20181110/05fa33fe442e4eb5ada730fa2b3d6b1b.dmg?filename=Nox_installer_for_mac_v#{version}_intl.dmg"
  name 'Nox App Player'
  homepage 'https://www.bignox.com/'

  app 'Nox App Player.app'
end
