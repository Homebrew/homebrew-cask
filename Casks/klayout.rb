cask 'klayout' do
  version '0.26.4'

  if MacOS.version <= :high_sierra
    sha256 '2dfadd201d54bb1c30a7713941759687cd22021ac0205f8e1dff20ef57728618'

    # klayout.org/ was verified as official when first introduced to the cask
    url "https://www.klayout.org/downloads/MacOS/ST-klayout-#{version}-macOS-HighSierra-1-qt5MP-RsysPsys.dmg"
  elsif MacOS.version <= :mojave
    sha256 'b6d12eff3b773b40330eaf839461d129dbb3d69fa7a3ca900bcedb688ec72801'

    # klayout.org/ was verified as official when first introduced to the cask
    url "https://www.klayout.org/downloads/MacOS/ST-klayout-#{version}-macOS-Mojave-1-qt5MP-RsysPsys.dmg"
  else
    sha256 'f6a3c7a29f9c07c97c14d2673104118f7e8f372a7301a51997c99a8cbf8a6e37'

    # klayout.org/ was verified as official when first introduced to the cask
    url "https://www.klayout.org/downloads/MacOS/ST-klayout-#{version}-macOS-Catalina-1-qt5MP-RsysPsys.dmg"
  end

  appcast 'https://www.klayout.de/development.html'
  name 'KLayout'
  homepage 'https://www.klayout.de/'

  depends_on macos: '>= :mojave'

  suite 'KLayout'

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join('KLayout').tap(&:mkpath))
  end

  uninstall pkgutil: 'klayout.de',
            quit:    'klayout.de'
end
