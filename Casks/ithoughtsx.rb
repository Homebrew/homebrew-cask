cask 'ithoughtsx' do
  version '5.16'
  sha256 'b9b300ef7930a82be422b86aa09582518ff4e3ff7cbac1626549028b6a4db0ad'

  # ithoughtsx.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ithoughtsx.s3.amazonaws.com/iThoughtsX_#{version.dots_to_underscores}.zip"
  appcast 'https://ithoughtsx.s3.amazonaws.com/ithoughtsx.xml'
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
