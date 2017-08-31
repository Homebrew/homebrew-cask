cask 'numi' do
  version '3.17.1,134:1502275053'
  sha256 '1a01370a5dd7ca9b7f1a7cc3253d39c0b57aed65127b1ee2741336326a72cb37'

  # dl.devmate.com/com.dmitrynikolaev.numi was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.dmitrynikolaev.numi/#{version.after_comma.before_colon}/#{version.after_colon}/Numi-#{version.after_comma.before_colon}.zip"
  appcast 'http://updates.devmate.com/com.dmitrynikolaev.numi.xml',
          checkpoint: 'e36b71a82c8eb8d35cbfeb660f237e88a10e46551b678a8e0338906b28962729'
  name 'Numi'
  homepage 'https://numi.io/'

  auto_updates true

  app 'Numi.app'

  uninstall launchctl: "com.dmitrynikolaev.numi#{version.major}helper",
            quit:      'com.dmitrynikolaev.numi'

  zap delete: [
                '~/Library/Caches/com.crashlytics.data/com.dmitrynikolaev.numi',
                '~/Library/Caches/com.dmitrynikolaev.numi',
                '~/Library/Caches/io.fabric.sdk.mac.data/com.dmitrynikolaev.numi',
              ],
      trash:  [
                '~/Library/Application Support/com.dmitrynikolaev.numi',
                '~/Library/Preferences/com.dmitrynikolaev.numi.plist',
              ]
end
