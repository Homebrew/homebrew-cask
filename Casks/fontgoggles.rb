cask 'fontgoggles' do
  version '1.1.13'
  sha256 'b888dd0ee4330ef2b58fa6919202fab66aa26608cdcc95595c029ee6430e224d'

  # github.com/justvanrossum/fontgoggles/ was verified as official when first introduced to the cask
  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  appcast 'https://github.com/justvanrossum/fontgoggles/releases.atom'
  name 'FontGoggles'
  homepage 'https://fontgoggles.org/'

  app 'FontGoggles.app'
end
