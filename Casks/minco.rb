cask 'minco' do
  version '2.0.29'
  sha256 '1c03dfb0b85718e2a6aad7cb1482897d183d6aa92f0e2fee53a6d7835c25e481'

  url "http://www.celmaro.com/files/minco#{version.major}/Minco.zip"
  appcast "http://www.celmaro.com/updates/minco#{version.major}/minco.xml",
          checkpoint: 'a2dabc1b47ee360c02d9379f8cf4b04396bcc11c49176350e670bc8c47e08e9d'
  name 'Minco'
  homepage 'http://www.celmaro.com/minco/'

  depends_on macos: '>= :yosemite'

  app 'Minco.app'
end
