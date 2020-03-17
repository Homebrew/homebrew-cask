cask 'fontgoggles' do
  version '1.1.7'
  sha256 '36546080ca22fdaf81aa9238962dcd9101cfff1e794ac13369946eb2a9f77a46'

  # github.com/justvanrossum/fontgoggles was verified as official when first introduced to the cask
  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  appcast 'https://github.com/justvanrossum/fontgoggles/releases.atom'
  name 'FontGoggles'
  homepage 'https://fontgoggles.org/'

  app 'FontGoggles.app'
end
