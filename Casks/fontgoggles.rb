cask 'fontgoggles' do
  version '1.1.1'
  sha256 '1d22d498c0bbea87b874666cc097d5da9e8a5db60ed56e9223b68e4bed7760f0'

  # github.com/justvanrossum/fontgoggles was verified as official when first introduced to the cask
  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  appcast 'https://github.com/justvanrossum/fontgoggles/releases.atom'
  name 'FontGoggles'
  homepage 'https://fontgoggles.org/'

  app 'FontGoggles.app'
end
