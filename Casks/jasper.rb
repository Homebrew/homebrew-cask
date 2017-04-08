cask 'jasper' do
  version '0.2.5'
  sha256 'b7bd1f128032c90526bd11175f780c59c9118f801e5193d4571715dcb5f221a9'

  # github.com/jasperapp/jasper was verified as official when first introduced to the cask
  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac.zip"
  appcast 'https://jasperapp.io/-/versions-mac.json',
          checkpoint: '806e0f2b6d3d7714b610717cd49c631453eb52367a3ad6560d9124960d13b301'
  name 'Jasper'
  homepage 'https://jasperapp.io/'

  app 'Jasper.app'

  zap delete: [
                '~/Library/Application Support/jasper',
                '~/Library/Containers/io.jasperapp',
              ]
end
