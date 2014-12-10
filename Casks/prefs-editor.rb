cask :v1 => 'prefs-editor' do
  version :latest
  sha256 :no_check

  url 'http://files.tempel.org/Various/OSX_Prefs_Editor/PrefsEditor.zip'
  homepage 'http://www.tempel.org/PrefsEditor'
  license :unknown    # todo: improve this machine-generated value

  app 'Prefs Editor.app'
end
