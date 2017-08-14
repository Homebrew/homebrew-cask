cask 'firealpaca' do
  version :latest
  sha256 :no_check

  url 'http://firealpaca.com/download/mac',
      referer: 'http://firealpaca.com/'
  name 'Fire Alpaca'
  homepage 'https://firealpaca.com/'

  app 'FireAlpaca.app'
end
