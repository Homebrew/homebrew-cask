cask :v1 => 'freeplane' do
  version '1.3.12'
  sha256 '761cf0abb98c4678f8f40b7ea3810c7faf72e096ab8f3e2085628650028f68f1'

  url "http://downloads.sourceforge.net/project/freeplane/freeplane%20stable/freeplane_app-#{version}.dmg"
  homepage 'http://freeplane.sourceforge.net/'
  license :gpl

  app 'Freeplane.app'
end
