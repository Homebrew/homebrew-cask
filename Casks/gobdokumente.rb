cask 'gobdokumente' do
  version '1.6.6'
  sha256 '94627a8af764ff7a921e8593f7d2168d73ba4c51224a7f14d82ca076a3ba75f5'

  # download.moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/GoBDokumente.zip'
  appcast 'https://sparkle.moapp.software/gobdokumente.xml'
  name 'GoBDokumente'
  homepage 'https://gobdokumente.de/'

  app 'GoBDokumente.app'
end
