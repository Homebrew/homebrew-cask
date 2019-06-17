cask 'squirrel' do
  version '0.12.0'
  sha256 'e07cc3b1b314fb0784654f311f40fd6016e7d5822e5052adb5dbf1c97ddf2edc'

  # dl.bintray.com/rime/squirrel was verified as official when first introduced to the cask
  url "https://dl.bintray.com/rime/squirrel/Squirrel-#{version}.zip"
  appcast 'https://rime.im/release/squirrel/appcast.xml'
  name 'Squirrel'
  homepage 'https://rime.im/'

  auto_updates true

  pkg 'Squirrel.pkg'

  uninstall pkgutil: [
                       'im.rime.inputmethod.Squirrel',
                       'com.googlecode.rimeime.Squirrel.pkg', # Package name of older versions (< 0.10.0)
                     ],
            delete:  '/Library/Input Methods/Squirrel.app'

  zap trash: [
               '~/Library/Caches/im.rime.inputmethod.Squirrel',
               '~/Library/Preferences/im.rime.inputmethod.Squirrel.plist',
               # Data for older versions (< 0.10.0)
               '~/Library/Caches/com.googlecode.rimeime.inputmethod.Squirrel',
               '~/Library/Preferences/com.googlecode.rimeime.inputmethod.Squirrel.plist',
             ]
end
