cask 'processing' do
  version '3.3.7'
  sha256 '4f076f6957b3c5e7df40d29864fa9fe6fdb944e00863bd3f534fe0dd234f4992'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: '2da872c8774ac8a0519516a83488dcf0b524e7af91b857ea9ac96957978c0658'
  name 'Processing'
  homepage 'https://processing.org/'

  app 'Processing.app'

  zap trash: [
               '~/Library/Processing',
               '~/Preferences/org.processing.app.plist',
               '~/Preferences/processing.app.tools.plist',
             ]
end
