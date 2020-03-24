cask 'fontgoggles' do
  version '1.1.10'
  sha256 '887e5b5b9c4b88fd9444ca9da7dc360781c430ef9c048c40950c32b56d8a007b'

  # github.com/justvanrossum/fontgoggles was verified as official when first introduced to the cask
  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  appcast 'https://github.com/justvanrossum/fontgoggles/releases.atom'
  name 'FontGoggles'
  homepage 'https://fontgoggles.org/'

  app 'FontGoggles.app'
end
