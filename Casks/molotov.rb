cask 'molotov' do
  version '0.9.3'
  sha256 '5063a62f8a7fe6a92c7fec9d739f5e0dd7516bb499cb0e109b22ef8f6915d438'

  url "http://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'
  license :unknown

  app 'Molotov.app'
end
