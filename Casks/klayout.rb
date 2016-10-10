cask 'klayout' do
  version '0.24.8'
  sha256 '95b38f338b76636fc3fa840b747fc3a62dd9335a69163996fd741f289c62f40e'

  # klayout.org was verified as official when first introduced to the cask
  url "http://www.klayout.org/downloads/klayout-#{version}-MacOSX-Yosemite-1-Qt487mp.dmg.bz2"
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
