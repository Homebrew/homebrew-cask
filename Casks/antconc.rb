cask 'antconc' do
  if MacOS.version <= :snow_leopard
    version '3.4.1'
    sha256 '03c353c059b8c0762b01d9be83f435321f5396cbf203bd8b36c6a56682b6a240'
  else
    version '3.4.4'
    sha256 '2c346728c70dce3279647005f8dd704e48368c91aada684aaee4ce01017c1327'
  end

  url "http://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/AntConc.zip"
  appcast 'http://www.laurenceanthony.net/software/antconc/releases/',
          checkpoint: '004e394eaa707f9e54139e66f1fce95eb41aff62cd8cf4ef3b4911fca75c77f6'
  name 'AntConc'
  homepage 'http://www.laurenceanthony.net/software/antconc/'

  app 'AntConc.app'
end
