cask 'cocoa-weather' do
  version '1.3'
  sha256 '5582f3c89970be60fab16dac5b5876d0c450d3ac2ae1ff883a7ea9b846af2d87'

  # github.com/zhs852/Cocoa-Weather was verified as official when first introdu$
  url "https://github.com/zhs852/Cocoa-Weather/releases/download/#{version}/Coc$
  appcast 'https://github.com/zhs852/Cocoa-Weather/releases.atom'
  name 'Cocoa Weather'
  homepage 'https://zhs852.github.io/2018/09/23/Cocoa-Weather/'

  app 'Cocoa Weather.app'
end
