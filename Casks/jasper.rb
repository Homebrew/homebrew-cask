cask 'jasper' do
  version '0.3.1'
  sha256 '6de55bce4ac61bddc891ffd7c83658f4f7b2aba63da7ca6f37d70d12ce321de2'

  # github.com/jasperapp/jasper was verified as official when first introduced to the cask
  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac.zip"
  appcast 'https://jasperapp.io/-/versions-mac.json',
          checkpoint: '4e7433ae8552e9956b99a0168cd9dd154a03749c9ae81ebb4e43f35584872193'
  name 'Jasper'
  homepage 'https://jasperapp.io/'

  app 'Jasper.app'

  zap delete: [
                '~/Library/Application Support/jasper',
                '~/Library/Containers/io.jasperapp',
              ]
end
