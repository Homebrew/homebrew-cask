cask 'fontgoggles' do
  version '1.1.4'
  sha256 '85d4ced2f85e3e3ac8c4274ceaceca6cf4cb05f54df036804c6515daa28b6520'

  # github.com/justvanrossum/fontgoggles was verified as official when first introduced to the cask
  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  appcast 'https://github.com/justvanrossum/fontgoggles/releases.atom'
  name 'FontGoggles'
  homepage 'https://fontgoggles.org/'

  app 'FontGoggles.app'
end
