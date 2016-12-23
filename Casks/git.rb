cask 'git' do
  if MacOS.version <= :mountain_lion
    version '2.3.5'
    sha256 '9dc62be67359298914c37cb7464b349daece3f06a903630f8a0f37a6a39c0728'

    url "https://downloads.sourceforge.net/git-osx-installer/git-#{version}-intel-universal-snow-leopard.dmg"
    pkg "git-#{version}-intel-universal-snow-leopard.pkg"
  else
    version '2.10.1'
    sha256 '6bad786bae098eaae0aa824e714d5a0b0fb3eb5d1412ed27c89743ddc1d3d209'

    url "https://downloads.sourceforge.net/git-osx-installer/git-#{version}-intel-universal-mavericks.dmg"
    appcast 'https://sourceforge.net/projects/git-osx-installer/rss',
            checkpoint: '56ba7834c0c58ff1b9f9ab9c7660d7a3228339e6114224a665b0285c5cc5d800'

    pkg "git-#{version}-intel-universal-mavericks.pkg"
  end

  name 'git-osx-installer'
  homepage 'https://sourceforge.net/projects/git-osx-installer/'

  uninstall script:  '/usr/local/git/uninstall.sh',
            pkgutil: "GitOSX.Installer.git#{version.no_dots}Universal.*pkg"
end
