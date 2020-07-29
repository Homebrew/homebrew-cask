cask 'jasper' do
  version '0.8.0'
  sha256 '4c3c49b4b1b36f59c76fa810400e9f87b783a7d6eefe84cc4f20c9f3e2601110'

  # github.com/jasperapp/jasper/ was verified as official when first introduced to the cask
  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac.zip"
  appcast 'https://github.com/jasperapp/jasper/releases.atom'
  name 'Jasper'
  homepage 'https://jasperapp.io/'

  app 'Jasper.app'

  zap trash: [
               '~/Library/Application Support/jasper',
               '~/Library/Containers/io.jasperapp',
             ]
end
