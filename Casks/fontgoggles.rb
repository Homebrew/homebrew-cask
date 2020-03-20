cask 'fontgoggles' do
  version '1.1.8'
  sha256 '043e5f44c823cf3025c8f6c21ef56cfaa2a81db0639a6423cf33f334a2b0d832'

  # github.com/justvanrossum/fontgoggles was verified as official when first introduced to the cask
  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  appcast 'https://github.com/justvanrossum/fontgoggles/releases.atom'
  name 'FontGoggles'
  homepage 'https://fontgoggles.org/'

  app 'FontGoggles.app'
end
