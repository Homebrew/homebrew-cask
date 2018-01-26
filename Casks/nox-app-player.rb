cask 'nox-app-player' do
  version '1.2.1.0'
  sha256 '930e27d15ef4bf4532508fafbd506cd88614be6928939e577bbe24844b74bd16'

  url "https://res05.bignox.com/g5/M00/01/7F/CqsbdFmdJmKAIgUeFuRXUwDHpR0362.dmg?filename=Nox_installer_for_mac_v#{version}_intl.dmg"
  name 'Nox App Player'
  homepage 'https://www.bignox.com/'

  app 'Nox App Player.app'
end
