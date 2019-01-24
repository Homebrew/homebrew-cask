cask 'squirrel' do
  version '0.11.0'
  sha256 '78f8294483d52f3f75831d6c5b669a7b39e743ce94b2c5b6d1c50406b80667b8'

  # dl.bintray.com/rime/squirrel was verified as official when first introduced to the cask
  url "https://dl.bintray.com/rime/squirrel/Squirrel-#{version}.zip"
  appcast 'https://rime.github.io/release/squirrel/appcast.xml'
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
