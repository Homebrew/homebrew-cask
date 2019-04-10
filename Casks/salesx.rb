cask 'salesx' do
  version '1.6'
  sha256 '62a7a1176b4104e78c390018a4dd0d06a5f4e33ca506708b0447e8a8914252c9'

  # dl.devmate.com/io.seedlab.salesx was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/io.seedlab.salesx/SalesX.zip'
  appcast 'https://updates.devmate.com/io.seedlab.salesx.xml'
  name 'SalesX'
  homepage 'http://salesx.in/'

  app 'SalesX.app'

  uninstall login_item: 'SalesX',
            quit:       'io.seedlab.salesx'
end
