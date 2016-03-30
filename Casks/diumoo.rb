cask 'diumoo' do
  version :latest
  sha256 :no_check

  url 'http://share.diumoo.net/static/diumoo.zip'
  name 'diumoo'
  homepage 'http://diumoo.net/'
  license :gratis

  app 'diumoo.app'
end
