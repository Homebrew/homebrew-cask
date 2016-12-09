cask 'cpuinfo' do
  version :latest
  sha256 :no_check

  url 'https://github.com/yusukeshibata/cpuinfo/blob/master/dist/cpuinfo.zip?raw=true'
  name 'cpuinfo'
  homepage 'https://github.com/yusukeshibata/cpuinfo/'

  app 'cpuinfo.app'
end
