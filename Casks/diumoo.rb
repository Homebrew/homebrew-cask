cask :v1 => 'diumoo' do
  version :latest
  sha256 :no_check

  url 'http://share.diumoo.net/static/diumoo.zip'
  homepage 'http://diumoo.net/'
  license :unknown

  app 'diumoo.app'
end
