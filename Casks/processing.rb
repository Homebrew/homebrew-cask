cask 'processing' do
  version '3.0.2'
  sha256 '4a5de6ef344921f3ec41d188c2f81caab786778807495bbf3d6691a35bb48d1f'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: 'c4e19d359cb6b40bf0eff40d39f527e6a942c8c5bc44f0f1c2b0639a838e68c1'
  name 'Processing'
  homepage 'https://processing.org/'
  license :gpl

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
