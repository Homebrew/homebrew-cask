cask 'betterzip' do
  version '3.1.2'
  sha256 'eaf686e95876fd2b064cc1a6aba984c7b40b74710c5894c28130ed53a428f049'

  url "https://macitbetter.com/dl/BetterZip-#{version}.zip"
  appcast "https://macitbetter.com/BetterZip#{version.major}.rss",
          checkpoint: 'cc8f405304c66c96a64702a7806bef9e5c5a3f0b393560c95130e1730a38d79f'
  name 'BetterZip'
  homepage 'https://macitbetter.com'

  app 'BetterZip.app'

  zap delete: '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
