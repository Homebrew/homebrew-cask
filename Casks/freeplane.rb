cask 'freeplane' do
  version '1.8.0'
  sha256 '639b3e0e0bc60f3b6e180a0a29f8a0fa6fc02b55332dde2c7d2647f91a618a86'

  # downloads.sourceforge.net/freeplane was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/Freeplane-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable'
  name 'Freeplane'
  homepage 'https://freeplane.sourceforge.io/'

  app 'Freeplane.app'
end
