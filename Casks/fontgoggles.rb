cask 'fontgoggles' do
  version '1.1.15'
  sha256 '1f55131fe2fbecd38f4e152eef26136cbb5e17e9ec67a353e7c8dacb94001cb1'

  # github.com/justvanrossum/fontgoggles/ was verified as official when first introduced to the cask
  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  appcast 'https://github.com/justvanrossum/fontgoggles/releases.atom'
  name 'FontGoggles'
  homepage 'https://fontgoggles.org/'

  app 'FontGoggles.app'
end
