class Minco < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://www.celmaro.com/files/minco/Minco.zip'
  appcast 'https://ssl.webpack.de/celmaro.com/updates/minco/minco.xml'
  homepage 'http://www.celmaro.com/minco/'

  link 'Minco.app'
end
