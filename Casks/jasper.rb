cask 'jasper' do
  version '0.2.1'
  sha256 'fdf38036aa77e018652d2ef9dd54249dec14b7c07904421f4d9d72e1c5140d8f'

  # github.com/jasperapp/jasper was verified as official when first introduced to the cask
  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac.zip"
  appcast 'https://jasperapp.io/-/versions-mac.json',
          checkpoint: '6ab49218c1d9d2897a96f897f83e94de4a931e4f594be91b294ee448c6267b34'
  name 'Jasper'
  homepage 'https://jasperapp.io/'

  app 'Jasper.app'

  zap delete: [
                '~/Library/Application Support/jasper',
                '~/Library/Containers/io.jasperapp',
              ]
end
