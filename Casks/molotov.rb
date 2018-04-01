cask 'molotov' do
  version '2.1.0'
  sha256 '95ce31a86764f92dc6a6e1123c6b8ca91699f3c2350c97741fbf4cceaeeb0738'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
