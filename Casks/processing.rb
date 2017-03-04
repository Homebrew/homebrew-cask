cask 'processing' do
  version '3.3'
  sha256 'a3cb41eb4a4d69484c5e5359d9a03e526a4d4e97bbdb177bda2ee24d51b99a75'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: '63af13fc24f0f94d590fe12aad94394b5139a8a3a85df968db7e6ecf556cd24d'
  name 'Processing'
  homepage 'https://processing.org/'

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
