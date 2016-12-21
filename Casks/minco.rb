cask 'minco' do
  version '2.0.27'
  sha256 '70834dc1356d008dc989c2b645dadbf1c9eacb3b75c661fcc212dba2944b1b62'

  url "http://www.celmaro.com/files/minco#{version.major}/Minco.zip"
  appcast "http://www.celmaro.com/updates/minco#{version.major}/minco.xml",
          checkpoint: '652b47a25570c42e1b2ad9f3b1c584a93c53326b7ce87fc16c79a2c2767bbff4'
  name 'Minco'
  homepage 'http://www.celmaro.com/minco/'

  depends_on macos: '>= :yosemite'

  app 'Minco.app'
end
