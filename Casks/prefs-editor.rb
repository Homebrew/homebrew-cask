cask 'prefs-editor' do
  version '1.2.4'
  sha256 '50a9ae754f06390db1838553b2c276fa60fad84be800de195ca2c7a5fc3cd23b'

  url "http://files.tempel.org/Various/OSX_Prefs_Editor/PrefsEditor-#{version}_64bit.zip"
  appcast 'http://apps.tempel.org/PrefsEditor/appcast.xml',
          checkpoint: '911d1002adc27d605fd3e6fa5e6145a7341dfe244bf93b06abae3cb2a73b31b7'
  name 'Prefs Editor'
  homepage 'http://apps.tempel.org/PrefsEditor/'

  app 'Prefs Editor.app'

  zap trash: [
               '~/Library/Preferences/org.tempel.prefseditor.plist',
               '~/Library/Saved Application State/org.tempel.prefseditor.savedState',
             ]
end
