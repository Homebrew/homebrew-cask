cask 'padlock' do
  version '2.4.2'
  sha256 '3c42470bd6fa53aae2e9699d6ef4b43b0f19a5639256de37fb8b015adf77225e'

  # github.com/MaKleSoft/padlock was verified as official when first introduced to the cask
  url "https://github.com/MaKleSoft/padlock/releases/download/v#{version}/Padlock-#{version}.dmg"
  appcast 'https://github.com/MaKleSoft/padlock/releases.atom',
          checkpoint: '03bb2528ab052d5ffbeef6dbde8b7ccc2dc10ae806a7164939e5957f07dea36e'
  name 'Padlock'
  homepage 'https://padlock.io/'

  app 'Padlock.app'
end
