cask 'numi' do
  version '3.23.639'
  sha256 '68011fc38d875d745aed7434f767245fb0d0569b4b17fa8354b6c57bba3847f2'

  url "https://s5.numi.app/updates/#{version}/Numi.zip"
  appcast 'https://s5.numi.app/updates/updates.xml'
  name 'Numi'
  homepage 'https://numi.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Numi.app'

  uninstall launchctl: "com.dmitrynikolaev.numi#{version.major}helper",
            quit:      'com.dmitrynikolaev.numi'

  zap trash: [
               '~/Library/Application Support/Numi',
               '~/Library/Application Support/com.dmitrynikolaev.numi',
               '~/Library/Application Support/CrashReporter/Numi_*.plist',
               '~/Library/Caches/com.crashlytics.data/com.dmitrynikolaev.numi',
               '~/Library/Caches/com.dmitrynikolaev.numi',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.dmitrynikolaev.numi',
               '~/Library/Containers/com.dmitrynikolaev.numi.NumiExtension',
               '~/Library/Preferences/com.dmitrynikolaev.numi.plist',
               '/Users/Shared/Numi',
             ]
end
