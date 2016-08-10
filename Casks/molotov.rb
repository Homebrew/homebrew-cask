cask 'molotov' do
  version '0.9.4'
  sha256 '1fc3487eb4e36dc22b65eed9952b7cf5cd22abdf426ae5effbc194446811f1b4'

  url "http://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'
  license :unknown

  app 'Molotov.app'
end
