cask 'betterzip' do
  version '3.1.1'
  sha256 '0406e9849c048b744924444c2419fcc1bcfde529c3fce9344d72b875a484586b'

  url "http://macitbetter.com/dl/BetterZip-#{version}.zip"
  appcast 'http://macitbetter.com/BetterZip3.rss',
          checkpoint: '92ccd21015545a5e42d93643ec5e7d394a10bc4caafeaffcfdfe6fc4943107b3'
  name 'BetterZip'
  homepage 'http://macitbetter.com'
  license :commercial

  app 'BetterZip.app'

  zap delete: '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
