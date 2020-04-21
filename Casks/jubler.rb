cask 'jubler' do
  version '7.0.0-alpha3'
  sha256 '8c316e6f2fef9070b7481011522f80136990a8cf987ba0b3ace7c5a8746af8d8'

  # github.com/teras/Jubler/ was verified as official when first introduced to the cask
  url "https://github.com/teras/Jubler/releases/download/v#{version}/Jubler-#{version}.dmg"
  appcast 'https://github.com/teras/Jubler/releases.atom'
  name 'Jubler'
  homepage 'https://www.jubler.org/'

  app 'Jubler.app'
end
