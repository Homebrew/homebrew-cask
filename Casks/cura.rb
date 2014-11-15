cask :v1 => 'cura' do
  version '14.09'
  sha256 '563674f1696c1faf21a5a79b8684811085c868dbb891c87a0ba45c46539f316b'

  url "http://software.ultimaker.com/current/Cura-#{version}-MacOS.dmg"
  homepage 'http://daid.github.com/Cura/'
  license :oss

  app 'Cura/Cura.app'

  zap :delete => '~/.cura'
end
