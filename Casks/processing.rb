cask :v1 => 'processing' do
  version '3.0b5'
  sha256 'ea684345279ec59dd749a2b7fb103eecf5d69576472e438adccdf3f3d9c2c43a'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  name 'Processing'
  homepage 'https://processing.org/'
  license :gpl

  app 'Processing.app'

  zap :delete => '~/Library/Processing/preferences.txt'
end
