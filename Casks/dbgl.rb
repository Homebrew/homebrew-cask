cask 'dbgl' do
  version '0.80'
  sha256 'd78ac70fd0e19140408ede8a735248d2ed6edcc324bbc91cbbc7d85184be4cc9'

  url "http://members.quicknet.nl/blankendaalr/dbgl/download/dbgl#{version.no_dots}.dmg"
  name 'DBGL'
  homepage 'http://members.quicknet.nl/blankendaalr/dbgl/'
  license :gpl

  app 'DBGL.app'
end
