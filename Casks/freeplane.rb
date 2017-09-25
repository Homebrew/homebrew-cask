cask 'freeplane' do
  version '1.6.7'
  sha256 '2dde9e4b466772c83174059ae2fa0b553588c26720ea2d207826f99d229a5d9d'

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/freeplane_app_jre-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable',
          checkpoint: 'e5c78ca843e02aa8c6fe5290522449736ce71303c0f8c1bc9269a8aee76a1550'
  name 'Freeplane'
  homepage 'http://freeplane.sourceforge.net/'

  app 'Freeplane.app'
end
