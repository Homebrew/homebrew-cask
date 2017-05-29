cask 'betterzip' do
  version '4.0'
  sha256 'a83f83a79fb520e11528e7424723d805d855ff7e4623b14f1152080bff3791e8'

  url "https://macitbetter.com/dl/BetterZip-#{version}.zip"
  appcast "https://macitbetter.com/BetterZip#{version.major}.rss",
          checkpoint: 'a19e4e11e365f0aec5dc2af2e0a2b8b4a4de3ae43a5810b9ba9ceb00e3a6c927'
  name 'BetterZip'
  homepage 'https://macitbetter.com/'

  app 'BetterZip.app'

  zap delete: '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
