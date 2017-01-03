cask 'klayout' do
  version '0.24.9'
  sha256 '3c439d3fc0b5779278d5ce606136edbd945a58be5059068a78baa420e008cc9f'

  # klayout.org was verified as official when first introduced to the cask
  url "http://www.klayout.org/downloads/MacOS/klayout-#{version}-MacOSX-Yosemite-1-Qt487mp.dmg.bz2"
  name 'KLayout'
  homepage 'http://www.klayout.de/'

  suite 'KLayout'

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join('KLayout').tap(&:mkpath))
  end

  uninstall pkgutil: 'klayout.de',
            quit:    'klayout.de'
end
