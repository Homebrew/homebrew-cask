cask 'padlock' do
  version '2.5.0'
  sha256 'f5d367608160a6fbbe6007893ed64e2fb8ba86f72bdff964b18f9b855b61eb80'

  # github.com/MaKleSoft/padlock was verified as official when first introduced to the cask
  url "https://github.com/MaKleSoft/padlock/releases/download/v#{version}/Padlock-#{version}.dmg"
  appcast 'https://github.com/MaKleSoft/padlock/releases.atom',
          checkpoint: 'fce2adfe4c017e5b85c44686faebab2c54ade548eaa6d41d6386e3c943844efb'
  name 'Padlock'
  homepage 'https://padlock.io/'

  app 'Padlock.app'
end
