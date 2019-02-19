cask 'molotov' do
  version '3.1.0'
  sha256 '37f4372515ed4056f34bf50a010410c97cab704e7950330be8051f9c1679c307'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
