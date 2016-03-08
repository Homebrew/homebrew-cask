cask 'freshback' do
  version :latest
  sha256 :no_check

  url 'http://arkanath.com/FreshBackMac/FreshBackMac.zip'
  name 'FreshBackMac'
  homepage 'http://arkanath.com/FreshBackMac/'
  license :gratis

  app 'FreshBackMac.app'
end
