cask 'klayout' do
  version '0.26.5'

  if MacOS.version <= :high_sierra
    sha256 'a5153ebc166991432076ae3e98d9ed5a2429d9dae959d44b05fe0aeaa51df0c9'

    # klayout.org/ was verified as official when first introduced to the cask
    url "https://www.klayout.org/downloads/MacOS/ST-klayout-#{version}-macOS-HighSierra-1-qt5MP-RsysPsys.dmg"
  elsif MacOS.version <= :mojave
    sha256 '72f2d93b4f935b3da632e0dffd1bbb90d20a6107d42a2f0d01bccba2effa21fc'

    # klayout.org/ was verified as official when first introduced to the cask
    url "https://www.klayout.org/downloads/MacOS/ST-klayout-#{version}-macOS-Mojave-1-qt5MP-RsysPsys.dmg"
  else
    sha256 '6b97e5cf03e1404c9a62faa37c252aef2f3b67eee8da792a329bdc7a2a2b01ff'

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
