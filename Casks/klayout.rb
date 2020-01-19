cask 'klayout' do
  version '0.26.3'

  if MacOS.version <= :high_sierra
    sha256 '1fe9568dcf100bb4aacfb298b1a004ca3a8e1b34a17671837fff4ba2d0948db8'

    # klayout.org was verified as official when first introduced to the cask
    url "https://www.klayout.org/downloads/MacOS/ST-klayout-#{version}-macOS-HighSierra-1-qt5MP-RsysPsys.dmg"
  elsif MacOS.version <= :mojave
    sha256 '3436de14f01e2618cf57a986b20d8931350199e3bed6a65d666837f860042539'

    # klayout.org was verified as official when first introduced to the cask
    url "https://www.klayout.org/downloads/MacOS/ST-klayout-#{version}-macOS-Mojave-1-qt5MP-RsysPsys.dmg"
  else
    sha256 '8b0f4146523caa1abbd02dd5efeeca4a60b82f066aece9b975bdfd0109a59c04'

  end

  # klayout.org was verified as official when first introduced to the cask
  url "https://www.klayout.org/downloads/MacOS/ST-klayout-#{version}-macOS-Catalina-1-qt5MP-RsysPsys.dmg"
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
