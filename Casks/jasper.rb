cask 'jasper' do
  version '0.2.3'
  sha256 'ee8cee3e635994a00394ec0f815f8900f2e50a2a54800c292968544d053eb355'

  # github.com/jasperapp/jasper was verified as official when first introduced to the cask
  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac.zip"
  appcast 'https://jasperapp.io/-/versions-mac.json',
          checkpoint: 'b88ca823b72545f2ffb62f652277b24f24de4cb2b5fa5dbd3811b20bee661393'
  name 'Jasper'
  homepage 'https://jasperapp.io/'

  app 'Jasper.app'

  zap delete: [
                '~/Library/Application Support/jasper',
                '~/Library/Containers/io.jasperapp',
              ]
end
