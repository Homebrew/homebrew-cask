cask 'git' do
  if MacOS.version <= :mountain_lion
    version '2.3.5'
    sha256 '9dc62be67359298914c37cb7464b349daece3f06a903630f8a0f37a6a39c0728'

    url "https://downloads.sourceforge.net/git-osx-installer/git-#{version}-intel-universal-snow-leopard.dmg"
    pkg "git-#{version}-intel-universal-snow-leopard.pkg"
  else
    version '2.7.1'
    sha256 '260b32e8877eb72d07807b26163aeec42e2d98c350f32051ab1ff0cc33626440'

    url "https://downloads.sourceforge.net/git-osx-installer/git-#{version}-intel-universal-mavericks.dmg"
    appcast 'https://sourceforge.net/projects/git-osx-installer/rss',
            checkpoint: '96f8b3facd8324ed75a2dc919d33519506b892f2b3bd8a84d16f2a6f93c9f6a5'

    pkg "git-#{version}-intel-universal-mavericks.pkg"
  end

  name 'git-osx-installer'
  homepage 'https://sourceforge.net/projects/git-osx-installer/'

  uninstall_preflight do
    system "/usr/bin/yes yes | #{staged_path}/uninstall.sh"
  end

  uninstall pkgutil: "GitOSX.Installer.git#{version.no_dots}Universal.*pkg"
end
