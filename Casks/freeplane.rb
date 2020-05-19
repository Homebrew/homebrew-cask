cask 'freeplane' do
  version '1.8.5'
  sha256 '8e3c1bb1d9f6c89a4b7ea7b13e4903fbe1439f2d4993d1b8ec30a2f72c330a72'

  # downloads.sourceforge.net/freeplane/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/Freeplane-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable'
  name 'Freeplane'
  homepage 'https://freeplane.sourceforge.io/'

  app 'Freeplane.app'
end
