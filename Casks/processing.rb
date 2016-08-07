cask 'processing' do
  version '3.1.2'
  sha256 '6e170886a3dc476c0b311cb4265fb5abef11e6fa736256d9ac8f5695c4c81b23'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: 'b731bdafbc7e9c7c9026d6a8c124c0dfc48d18f502fd7ae89cc445dc0bd02bee'
  name 'Processing'
  homepage 'https://processing.org/'
  license :gpl

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
