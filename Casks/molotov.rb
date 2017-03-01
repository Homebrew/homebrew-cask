cask 'molotov' do
  version '1.3.1'
  sha256 'ab2cf7e46e7e0b129ebcf99542de1bcf97a3443d610d712970054a9db3ceecaa'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
