cask 'padlock' do
  version '2.7.1'
  sha256 'b3c0ae95923d11997ccf1bd9aee341f751b57ca1e374528e4ffcf727fd541c1b'

  # github.com/MaKleSoft/padlock was verified as official when first introduced to the cask
  url "https://github.com/MaKleSoft/padlock/releases/download/v#{version}/Padlock-#{version}.dmg"
  appcast 'https://github.com/MaKleSoft/padlock/releases.atom'
  name 'Padlock'
  homepage 'https://padlock.io/'

  app 'Padlock.app'
end
