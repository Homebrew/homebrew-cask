cask 'salesx' do
  version '1.5'
  sha256 'c8e458a038a62f81fb78b912f3a557d6af5d125bd9117a603e4f17eafad09656'

  # dl.devmate.com/io.seedlab.salesx was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/io.seedlab.salesx/SalesX.zip'
  appcast 'https://updates.devmate.com/io.seedlab.salesx.xml'
  name 'SalesX'
  homepage 'http://salesx.in/'

  app 'SalesX.app'

  uninstall login_item: 'SalesX',
            quit:       'io.seedlab.salesx'
end
