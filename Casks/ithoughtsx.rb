cask 'ithoughtsx' do
  version '5.12'
  sha256 '21f8833719b0ae982406f6d036679263e2b7c0d40825ec8563ede114e622e821'

  # s3-eu-west-1.amazonaws.com/ithoughtsx was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/ithoughtsx/iThoughtsX_#{version.dots_to_underscores}.zip"
  appcast 'https://s3-eu-west-1.amazonaws.com/ithoughtsx/ithoughtsx.xml'
  name 'iThoughtsX'
  homepage 'https://www.toketaware.com/ithoughts-osx'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'iThoughtsX.app'

  zap trash: [
               '~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.toketaware.ios.ithoughts/',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.toketaware.ithoughtsx/',
               '~/Library/Caches/com.toketaware.ithoughtsx/',
               '~/Library/Application Support/CloudDocs/session/containers/iCloud.com.toketaware.ios.ithoughts/',
               '~/Library/Application Support/com.toketaware.ithoughtsx/',
               '~/Library/Preferences/com.toketaware.ithoughtsx.plist',
             ]
end
