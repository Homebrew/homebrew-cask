cask :v1 => 'namely' do
  version :latest
  sha256 :no_check

  url 'http://amarsagoo.info/namely/Namely.dmg'
  homepage 'http://amarsagoo.info/namely'
  license :gratis

  app 'Namely.app'
end
