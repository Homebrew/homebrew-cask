cask 'numi' do
  version '3.18.2,175:1527934852'
  sha256 'd4cb161a3463b0623eec47656d081bf1541b45e7230416ef3202dae76fec93c7'

  # dl.devmate.com/com.dmitrynikolaev.numi was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.dmitrynikolaev.numi/#{version.after_comma.before_colon}/#{version.after_colon}/Numi-#{version.after_comma.before_colon}.zip"
  appcast 'http://updates.devmate.com/com.dmitrynikolaev.numi.xml',
          checkpoint: '61c3ab47061136b0d6d5cad3aa06fd9823dc2ddc14a2f137ad99444cd2b4a035'
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
