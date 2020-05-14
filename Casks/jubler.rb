cask 'jubler' do
  version '7.0.0'
  sha256 '9d535ff444638804719d04010018c2b4ac620a7004866e5a9b7c3e5136fb798a'

  # github.com/teras/Jubler/ was verified as official when first introduced to the cask
  url "https://github.com/teras/Jubler/releases/download/v#{version}/Jubler-#{version}.dmg"
  appcast 'https://github.com/teras/Jubler/releases.atom'
  name 'Jubler'
  homepage 'https://www.jubler.org/'

  app 'Jubler.app'
end
