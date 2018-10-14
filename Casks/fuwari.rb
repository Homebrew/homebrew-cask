cask 'fuwari' do
  version '0.5.1'
  sha256 '754383f4cc4577bb2369e6c1ab1b03beeee9131fc1d3ba36694591977a226ea4'

  # github.com/kentya6/Fuwari was verified as official when first introduced to the cask
  url "https://github.com/kentya6/Fuwari/releases/tag/v#{version}"
  appcast 'https://github.com/kentya6/Fuwari/releases.atom'
  name 'Fuwari'
  homepage 'https://fuwari-app.com/'

  app 'Fuwari.app'

  uninstall login_item: 'Fuwari',
            quit:       'com.appknop.Fuwari'

  zap trash: [
               '~/Library/Application Support/com.appknop.Fuwari',
               '~/Library/Caches/com.appknop.Fuwari',
               '~/Library/Caches/com.crashlytics.data/com.appknop.Fuwari',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.appknop.Fuwari',
               '~/Library/Preferences/com.appknop.Fuwari.plist',
             ]
end
