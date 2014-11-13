cask :v1 => 'minco' do
  version :latest
  sha256 :no_check

  url 'http://www.celmaro.com/files/minco/Minco.zip'
  appcast 'https://ssl.webpack.de/celmaro.com/updates/minco/minco.xml'
  homepage 'http://www.celmaro.com/minco/'
  license :unknown

  app 'Minco.app'
end
