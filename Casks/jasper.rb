cask 'jasper' do
  version '0.2.4'
  sha256 'd9d6724c87ab530b622adad799dd36fc84e5821380567a091c03e3ebe9566bda'

  # github.com/jasperapp/jasper was verified as official when first introduced to the cask
  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac.zip"
  appcast 'https://jasperapp.io/-/versions-mac.json',
          checkpoint: 'e90b87e98a64555bb4e6b89add562789499e09aef9720a9303dec8ff4caf4ea5'
  name 'Jasper'
  homepage 'https://jasperapp.io/'

  app 'Jasper.app'

  zap delete: [
                '~/Library/Application Support/jasper',
                '~/Library/Containers/io.jasperapp',
              ]
end
