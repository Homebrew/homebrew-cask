cask 'numi' do
  version '3.18.3,185:1529144261'
  sha256 '115977662d8d6aa42db12b7f6c7d89d127f86a99a28f68a367cb760c6d0a7566'

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
