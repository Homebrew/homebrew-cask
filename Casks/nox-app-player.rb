cask 'nox-app-player' do
  version '1.2.0.0'
  sha256 '242422ee12f90022cd31c727ff6dfa46adc8d093d2b0465fd84003059082d9f5'

  url "https://res05.bignox.com/g5/M00/00/F0/CqtxtVkUGWyAYYMgFvcbhYpnNUE571.dmg?filename=Nox_installer_for_mac_v#{version}_intl.dmg"
  name 'Nox App Player'
  homepage 'https://www.bignox.com/'

  app 'Nox App Player.app'
end
