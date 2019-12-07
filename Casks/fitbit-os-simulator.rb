cask 'fitbit-os-simulator' do
  version '0.8.0'
  sha256 'ea378d6bfc1088bea0a33250ba4d0d018200393de67bf80d4474167e6670628b'

  url "https://simulator-updates.fitbit.com/Fitbit%20OS%20Simulator-latest-#{version}.dmg"
  appcast 'https://simulator-updates.fitbit.com/latest-mac.yml'
  name 'Fitbit OS Simulator'
  homepage 'https://dev.fitbit.com/'

  app 'Fitbit OS Simulator.app'
end
