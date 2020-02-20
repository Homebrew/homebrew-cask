cask 'fitbit-os-simulator' do
  version '0.8.2'
  sha256 '435b085f6489691140621bec49d81cc72ea0879a0b4d49d0788bd45ca5bbf43b'

  url "https://simulator-updates.fitbit.com/Fitbit%20OS%20Simulator-latest-#{version}.dmg"
  appcast 'https://simulator-updates.fitbit.com/latest-mac.yml'
  name 'Fitbit OS Simulator'
  homepage 'https://dev.fitbit.com/'

  app 'Fitbit OS Simulator.app'
end
