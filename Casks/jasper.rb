cask 'jasper' do
  version '0.1.2'
  sha256 'dc8afb22d51aecea9f783359313531dc356cda050fc7390a6bc833a874108732'

  # github.com/jasperapp/jasper was verified as official when first introduced to the cask
  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_trial_mac.app.zip"
  appcast 'https://jasperapp.io/-/versions-mac.json',
          checkpoint: 'd0852a1c3b78587aa066292ffda9d2f5bf5c5ff7deb5670a5a9a5e35b32f0b08'
  name 'Jasper'
  homepage 'https://jasperapp.io/'

  app 'Jasper.app'

  zap delete: [
                '~/Library/Application Support/jasper',
                '~/Library/Containers/io.jasperapp',
              ]
end
