cask 'betterzip' do
  version '4.0.1'
  sha256 'd86d356efe3299d3ede725cd9821c8f3a36a791a8910aefc1c316b2aa4b1ba55'

  url "https://macitbetter.com/dl/BetterZip-#{version}.zip"
  appcast "https://macitbetter.com/BetterZip#{version.major}.rss",
          checkpoint: '3e463b0687c09b97515c0a492a33ede27a69ead8436604665b5c35ebc00d54a2'
  name 'BetterZip'
  homepage 'https://macitbetter.com/'

  auto_updates true

  app 'BetterZip.app'

  zap delete: '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
