cask 'molotov' do
  version '0.9.5'
  sha256 '969775a2a7369d491ee78ae76c5e2be760e47aacaf051cfb9c9633972c084f00'

  url "http://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
