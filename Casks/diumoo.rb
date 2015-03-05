cask :v1 => 'diumoo' do
  version :latest
  sha256 :no_check

  url 'http://share.diumoo.net/static/diumoo.zip'
  homepage 'http://diumoo.net/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'diumoo.app'
end
