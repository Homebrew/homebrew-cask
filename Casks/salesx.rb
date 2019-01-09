cask 'salesx' do
  version '1.4.9'
  sha256 '1962638d98bcffff3d557a6377c6a3453ff407cd595001c5bbf35bdf61935d47'

  # dl.devmate.com/io.seedlab.salesx was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/io.seedlab.salesx/SalesX.zip'
  appcast 'https://updates.devmate.com/io.seedlab.salesx.xml'
  name 'SalesX'
  homepage 'http://salesx.in/'

  app 'SalesX.app'

  uninstall login_item: 'SalesX',
            quit:       'io.seedlab.salesx'
end
