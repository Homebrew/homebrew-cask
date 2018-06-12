cask 'numi' do
  version '3.18.2,184:1528282321'
  sha256 'c71b6917a7af934283e128acf00ce69c3e457d3bf0cc485c7ce3fbc822a22230'

  # dl.devmate.com/com.dmitrynikolaev.numi was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.dmitrynikolaev.numi/#{version.after_comma.before_colon}/#{version.after_colon}/Numi-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.dmitrynikolaev.numi.xml'
  name 'Numi'
  homepage 'https://numi.io/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

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
