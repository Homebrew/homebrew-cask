cask 'molotov' do
  version '3.0.2'
  sha256 'e514b867375bf82915862334c9b409ef695056d73d02e2d2709f44a04d42d029'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
