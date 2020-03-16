cask 'fontgoggles' do
  version '1.1.6'
  sha256 'ea8aeaa0a576d2ed5517e34d9d26eb4bfed20ce38fcc42afad72963c446fba21'

  # github.com/justvanrossum/fontgoggles was verified as official when first introduced to the cask
  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  appcast 'https://github.com/justvanrossum/fontgoggles/releases.atom'
  name 'FontGoggles'
  homepage 'https://fontgoggles.org/'

  app 'FontGoggles.app'
end
