cask 'prefs-editor' do
  version :latest
  sha256 :no_check

  url 'http://files.tempel.org/Various/OSX_Prefs_Editor/PrefsEditor.zip'
  name 'Prefs Editor'
  homepage 'http://apps.tempel.org/PrefsEditor/'

  app 'Prefs Editor.app'

  zap delete: '~/Library/Saved Application State/org.tempel.prefseditor.savedState',
      trash:  '~/Library/Preferences/org.tempel.prefseditor.plist'
end
