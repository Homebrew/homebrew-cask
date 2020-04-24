cask 'rolisteam' do
  version '1.9.2'
  sha256 'eeb87c5cefc383845303edad44ea8b08ff808cb9e8ab80804a1172bbf1947a2d'

  # sourceforge.net/projects/rolisteam/files/ was verified as official when first introduced to the cask

  url "https://sourceforge.net/projects/rolisteam/files/#{version}/rcse_v#{version}_MacOs.dmg/download"
  appcast 'https://sourceforge.net/projects/rolisteam/rss'
  name 'Rolisteam'
  homepage 'https://rolisteam.org/'

  app 'rolisteam.app'
end
