cask 'fitbit-os-simulator' do
  version '0.8.1'
  sha256 'ed0dc28be133db1984446df686dc78903c77ec058563b4b2e9b8609af1818f1a'

  url "https://simulator-updates.fitbit.com/Fitbit%20OS%20Simulator-latest-#{version}.dmg"
  appcast 'https://simulator-updates.fitbit.com/latest-mac.yml'
  name 'Fitbit OS Simulator'
  homepage 'https://dev.fitbit.com/'

  app 'Fitbit OS Simulator.app'
end
