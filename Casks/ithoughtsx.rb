cask 'ithoughtsx' do
  version '5.15'
  sha256 'a5024635e7ea84976c84b3f6cccf0a4c1724c85cc444f0040b7af60c8ec75e8e'

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
