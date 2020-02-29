cask 'fontgoggles' do
  version '1.0'
  sha256 '6c7632e6276e4195a8f2b0d99dbac61a92fb3dfa99596adff89d4b0bd74ed4cf'

  # github.com/justvanrossum was verified as official when first introduced to the cask
  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  appcast 'https://github.com/justvanrossum/fontgoggles/releases.atom'
  name 'FontGoggles'
  homepage 'https://fontgoggles.org/'

  app 'FontGoggles.app'
end
