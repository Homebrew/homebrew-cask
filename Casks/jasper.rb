cask 'jasper' do
  version '0.6.0'
  sha256 '85b775774f09907cdec6788d941379cce9bbd8d4c5e2c390b2c45eb5841f7c0f'

  # github.com/jasperapp/jasper was verified as official when first introduced to the cask
  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac.zip"
  appcast 'https://jasperapp.io/-/versions-mac.json'
  name 'Jasper'
  homepage 'https://jasperapp.io/'

  app 'Jasper.app'

  zap trash: [
               '~/Library/Application Support/jasper',
               '~/Library/Containers/io.jasperapp',
             ]
end
