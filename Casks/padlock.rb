cask 'padlock' do
  version '2.3.1'
  sha256 '47f9b07bef7c30e61ef8fb933a7e3c1f0a636507a831b2ba1ebf95a8c371b2ce'

  # github.com/MaKleSoft/padlock was verified as official when first introduced to the cask
  url "https://github.com/MaKleSoft/padlock/releases/download/v#{version}/Padlock-#{version}.dmg"
  appcast 'https://github.com/MaKleSoft/padlock/releases.atom',
          checkpoint: 'dbce66e8b2c155a2087b0ded43d76dd7ef6448a09c02e7ff4155352ef8b3402f'
  name 'Padlock'
  homepage 'https://padlock.io/'

  app 'Padlock.app'
end
