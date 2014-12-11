cask :v1 => 'dropbox' do
  version :latest
  sha256 :no_check

  url 'https://www.dropbox.com/download?plat=mac&full=1'
  homepage 'https://www.dropbox.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Dropbox.app'

  zap :delete => '~/.dropbox'
end
