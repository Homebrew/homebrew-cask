cask :v1 => 'prefs-editor' do
  version :latest
  sha256 :no_check

  url 'http://files.tempel.org/Various/OSX_Prefs_Editor/PrefsEditor.zip'
  name 'Prefs Editor'
  homepage 'http://www.tempel.org/PrefsEditor'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Prefs Editor.app'
end
