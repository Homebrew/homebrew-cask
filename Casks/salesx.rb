cask 'salesx' do
  version '1.5.1'
  sha256 '28021a36794163bcefd2eaab09f33c9613b0da5853be1f039a8ff917b4b87311'

  # dl.devmate.com/io.seedlab.salesx was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/io.seedlab.salesx/SalesX.zip'
  appcast 'https://updates.devmate.com/io.seedlab.salesx.xml'
  name 'SalesX'
  homepage 'http://salesx.in/'

  app 'SalesX.app'

  uninstall login_item: 'SalesX',
            quit:       'io.seedlab.salesx'
end
