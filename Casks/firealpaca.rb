cask 'firealpaca' do
  version :latest
  sha256 :no_check

  url 'http://firealpaca.com/download.php?os=mac&key=17813449013210197561d4f66c5aca8c'
  name 'Fire Alpaca'
  homepage 'http://firealpaca.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FireAlpaca.app'
end
