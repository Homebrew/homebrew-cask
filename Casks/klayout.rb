cask 'klayout' do
  version '0.25.7'

  if MacOS.version <= :el_capitan
    sha256 :no_check

    # klayout.org was verified as official when first introduced to the cask
    url "https://www.klayout.org/downloads/MacOS/klayout-#{version}-MacOSX-ElCapitan-1-Qt5113mp.dmg"
  elsif MacOS.version <= :high_sierra
    sha256 'd05d090956700e9f5349c1f7ac1773a6a1df893263ddd81097135610e49dd49e'

    # klayout.org was verified as official when first introduced to the cask
    url "https://www.klayout.org/downloads/MacOS/klayout-#{version}-macOS-HighSierra-1-Qt5120mp.dmg"
  else
    sha256 'd05d090956700e9f5349c1f7ac1773a6a1df893263ddd81097135610e49dd49e'

    # klayout.org was verified as official when first introduced to the cask
    url "https://www.klayout.org/downloads/MacOS/klayout-#{version}-macOS-Mojave-1-Qt5120mp.dmg"
  end

  name 'KLayout'
  homepage 'https://www.klayout.de/'

  depends_on macos: '>= :el_capitan'

  suite 'KLayout'

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join('KLayout').tap(&:mkpath))
  end

  uninstall pkgutil: 'klayout.de',
            quit:    'klayout.de'
end
