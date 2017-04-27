cask 'jasper' do
  version '0.3.0'
  sha256 '3cbce35847c2cfdf29d2b76bafc0a2e71c14ec7be5a9c59eccc59311244345e6'

  # github.com/jasperapp/jasper was verified as official when first introduced to the cask
  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac.zip"
  appcast 'https://jasperapp.io/-/versions-mac.json',
          checkpoint: '4b6a99cac755f6f6c3f7a0c7d832f94bf7cdd7b66e8c7b58e591722e6e5d24b1'
  name 'Jasper'
  homepage 'https://jasperapp.io/'

  app 'Jasper.app'

  zap delete: [
                '~/Library/Application Support/jasper',
                '~/Library/Containers/io.jasperapp',
              ]
end
