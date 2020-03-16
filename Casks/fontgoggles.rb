cask 'fontgoggles' do
  version '1.1.5'
  sha256 '12c0b5a4a74eb416c4ed8f0316fd85a12070b943bb1cae4f55ec8d29d53636c5'

  # github.com/justvanrossum/fontgoggles was verified as official when first introduced to the cask
  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  appcast 'https://github.com/justvanrossum/fontgoggles/releases.atom'
  name 'FontGoggles'
  homepage 'https://fontgoggles.org/'

  app 'FontGoggles.app'
end
