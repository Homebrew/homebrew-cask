cask 'gobdokumente' do
  version '1.6.4'
  sha256 'c05acc5953956798f8eea156d2a102c16163bf734aab4071ab40dda0260b0389'

  # download.moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/GoBDokumente.zip'
  appcast 'https://sparkle.moapp.software/gobdokumente.xml'
  name 'GoBDokumente'
  homepage 'https://gobdokumente.de/'

  app 'GoBDokumente.app'
end
