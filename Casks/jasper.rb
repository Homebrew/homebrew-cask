cask 'jasper' do
  version '0.9.3'
  sha256 '46ec8b86ddf213624276cfa3ca5db10ddb4a306465c32e605d151cad6f6b38bb'

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
