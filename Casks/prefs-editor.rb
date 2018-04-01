cask 'prefs-editor' do
  version '1.2.3'
  sha256 '7d1ba23c60ffa085e581a3d7c326df6f833b2778755f60b31fa3812cfc53a4ca'

  url "http://files.tempel.org/Various/OSX_Prefs_Editor/PrefsEditor-#{version}.zip"
  appcast 'http://apps.tempel.org/PrefsEditor/appcast.xml',
          checkpoint: '318a32c8958d155691c6a1bb81f2209cb33754a67252b2f6e18d6fabf9310dbb'
  name 'Prefs Editor'
  homepage 'http://apps.tempel.org/PrefsEditor/'

  app 'Prefs Editor.app'

  zap trash: [
               '~/Library/Preferences/org.tempel.prefseditor.plist',
               '~/Library/Saved Application State/org.tempel.prefseditor.savedState',
             ]
end
