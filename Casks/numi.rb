cask 'numi' do
  version '3.28.668'
  sha256 'b4966d8f265fb0c1c8ad9aa804302cb43e3946429ad293f54ee94be00f6e92c6'

  url "https://s5.numi.app/updates/#{version}/Numi.zip"
  appcast 'https://s5.numi.app/appcasts/updates-50.xml'
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
