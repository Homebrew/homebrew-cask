cask 'squirrel' do
  version '0.10.0'
  sha256 '9eb07603a078cadd5475797432e578f366d0fa49f878b7f2f6b32336bfa5a258'

  # dl.bintray.com/rime/squirrel was verified as official when first introduced to the cask
  url "https://dl.bintray.com/rime/squirrel/Squirrel-#{version}.zip"
  name 'Squirrel'
  homepage 'https://rime.im/download/'

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
