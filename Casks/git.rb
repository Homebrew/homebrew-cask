cask 'git' do
  name 'git-osx-installer'
  homepage 'https://sourceforge.net/projects/git-osx-installer'
  license :mit

  if MacOS.release <= :mountain_lion
    version '2.3.5'
    url "https://downloads.sourceforge.net/sourceforge/git-osx-installer/git-#{version}-intel-universal-snow-leopard.dmg"
    sha256 '9dc62be67359298914c37cb7464b349daece3f06a903630f8a0f37a6a39c0728'
    pkg "git-#{version}-intel-universal-snow-leopard.pkg"
  else
    version '2.7.1'
    url "https://downloads.sourceforge.net/sourceforge/git-osx-installer/git-#{version}-intel-universal-mavericks.dmg"
    sha256 '260b32e8877eb72d07807b26163aeec42e2d98c350f32051ab1ff0cc33626440'
    pkg "git-#{version}-intel-universal-mavericks.pkg"
  end

  depends_on macos: '>= :snow_leopard'

  uninstall_preflight do
    system "/usr/bin/yes yes | #{staged_path}/uninstall.sh"
  end

  uninstall pkgutil: "GitOSX.Installer.git#{version.delete('.')}Universal.*pkg"
end
