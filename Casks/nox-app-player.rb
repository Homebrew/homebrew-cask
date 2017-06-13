cask 'nox-app-player' do
  version '1.1.0.0'
  sha256 'b0d3e380585559a85a1aae638d5d34a6d24d01be8ef395fc0c94f4fbf825bf9e'

  url "https://res05.bignox.com/g4/M00/00/F2/Cqt811iB0TyABuVaFvay1udzLNA478.dmg?filename=Nox_installer_for_mac_v#{version}_intl.dmg"
  name 'Nox App Player'
  homepage 'https://www.bignox.com/'

  app 'Nox App Player.app'
end
