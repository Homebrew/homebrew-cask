cask 'netloc' do
  version :latest
  sha256 :no_check

  url 'https://github.com/yusukeshibata/netloc/blob/master/dist/netloc.zip?raw=true'
  name 'netloc'
  homepage 'https://github.com/yusukeshibata/netloc/'

  app 'netloc.app'
end
