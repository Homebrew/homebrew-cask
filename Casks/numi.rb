cask 'numi' do
  version '3.20.2,486:1557156218'
  sha256 '78fea3e3aaea3f3373aacfae95298eb4d1fb559310aa32f8d5c99672cbc0cd66'

  # dl.devmate.com/com.dmitrynikolaev.numi was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.dmitrynikolaev.numi/#{version.after_comma.before_colon}/#{version.after_colon}/Numi-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.dmitrynikolaev.numi.xml'
  name 'Numi'
  homepage 'https://numi.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Numi.app'

  uninstall launchctl: "com.dmitrynikolaev.numi#{version.major}helper",
            quit:      'com.dmitrynikolaev.numi'

  zap trash: [
               '~/Library/Application Support/com.dmitrynikolaev.numi',
               '~/Library/Caches/com.crashlytics.data/com.dmitrynikolaev.numi',
               '~/Library/Caches/com.dmitrynikolaev.numi',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.dmitrynikolaev.numi',
               '~/Library/Preferences/com.dmitrynikolaev.numi.plist',
             ]
end
