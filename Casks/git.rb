cask 'git' do
  version '2.2.1'

  name 'git-osx-installer'
  homepage 'https://sourceforge.net/projects/git-osx-installer'
  license :mit

  if MacOS.release <= :mountain_lion
    url "https://downloads.sourceforge.net/sourceforge/git-osx-installer/git-#{version}-intel-universal-snow-leopard.dmg"
    sha256 '7b2caaa10b632a64ca9f28cf0bb7e3bdb338d740e78fe696fd11fe4bedbab8c2'
    pkg "git-#{version}-intel-universal-snow-leopard.pkg"
  else
    url "https://downloads.sourceforge.net/sourceforge/git-osx-installer/git-#{version}-intel-universal-mavericks.dmg"
    sha256 'f9b1d926736a7d5dbcff2ffe0920ae25c03b9880d4e218e23e3c06c231ba6b63'
    pkg "git-#{version}-intel-universal-mavericks.pkg"
  end

  depends_on macos: '>= :snow_leopard'

  uninstall_preflight do
    system "/usr/bin/yes yes | #{staged_path}/uninstall.sh"
  end

  uninstall pkgutil: "GitOSX.Installer.git#{version.delete('.')}Universal.*pkg"
end
