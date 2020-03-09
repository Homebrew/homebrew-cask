cask 'numi' do
  version '3.24.654'
  sha256 'fd5a64dd55576061da71db494a6612d6e2497bbf3c226950ec8dee4db34ba4cd'

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
