cask 'prefs-editor' do
  version '1.2.4'
  sha256 '50a9ae754f06390db1838553b2c276fa60fad84be800de195ca2c7a5fc3cd23b'

  url "https://files.tempel.org/Various/OSX_Prefs_Editor/PrefsEditor-#{version}_64bit.zip"
  appcast 'https://apps.tempel.org/PrefsEditor/appcast.xml'
  name 'Prefs Editor'
  homepage 'https://apps.tempel.org/PrefsEditor/'

  app 'Prefs Editor.app'

  zap trash: [
               '~/Library/Preferences/org.tempel.prefseditor.plist',
               '~/Library/Saved Application State/org.tempel.prefseditor.savedState',
             ]
end
