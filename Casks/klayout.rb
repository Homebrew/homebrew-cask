cask 'klayout' do
  version '0.25.7'
  sha256 'd05d090956700e9f5349c1f7ac1773a6a1df893263ddd81097135610e49dd49e'

  # klayout.org was verified as official when first introduced to the cask
  url "https://www.klayout.org/downloads/MacOS/klayout-#{version}-macOS-Mojave-1-Qt5120mp.dmg"
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
