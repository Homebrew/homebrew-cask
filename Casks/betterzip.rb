cask 'betterzip' do
  version '3.2.1'
  sha256 'd3d7536fef9958792b05f712c03e35205460d8d86767fd706806fbc92172b074'

  url "https://macitbetter.com/dl/BetterZip-#{version}.zip"
  appcast "https://macitbetter.com/BetterZip#{version.major}.rss",
          checkpoint: '9749780b36e704e5865f8671406c14a937644daf0efc5023ff05e49b95f39c48'
  name 'BetterZip'
  homepage 'https://macitbetter.com/'

  app 'BetterZip.app'

  zap delete: '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
