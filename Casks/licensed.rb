cask :v1 => 'licensed' do
  version :latest
  sha256 :no_check

  url 'http://amarsagoo.info/licensed/Licensed.dmg'
  homepage 'http://amarsagoo.info/licensed'
  license :gratis

  app 'Licensed.app'
end
