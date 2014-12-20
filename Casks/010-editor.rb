cask :v1 => '010-editor' do
  version :latest
  sha256 :no_check

  url 'http://www.sweetscape.com/download/010EditorMacInstaller.dmg'
  homepage 'http://www.sweetscape.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg '010 Editor.pkg'

  uninstall :pkgutil => 'com.SweetScape.010Editor.pkg'
end
