cask 'processing' do
  version '3.3.6'
  sha256 '3d97f9835e0e3b42ef95f8fc2e89e123478ee0864d015c577f6d1d87dc6e735f'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: '3ca368a6d2a97a16ff2cff0435fb1968da78a8e8fda3d16519b46341c9f50e9f'
  name 'Processing'
  homepage 'https://processing.org/'

  app 'Processing.app'

  zap trash: '~/Library/Processing/preferences.txt'
end
