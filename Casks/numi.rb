cask 'numi' do
  version '3.20,477:1550324415'
  sha256 '48aa2475110874274ec43d6b17e1b05c5a2fdaaeee0db306ccfe00dab54e1ccb'

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
