cask '010-editor' do
  version :latest
  sha256 :no_check

  url 'http://www.sweetscape.com/download/010EditorMacInstaller.dmg'
  name '010 Editor'
  homepage 'http://www.sweetscape.com/'
  license :commercial

  pkg '010 Editor.pkg'

  uninstall pkgutil: 'com.SweetScape.010Editor.pkg'
end
