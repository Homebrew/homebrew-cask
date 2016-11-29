cask 'processing' do
  version '3.2.3'
  sha256 '55874bba8eb6404a19b2c32697438421f93c20715be92e4637c1a26cabd56da0'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: 'b2000c13f2e7503048eb1ed3faedd0be414de16362217bee43e850402dd16483'
  name 'Processing'
  homepage 'https://processing.org/'

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
