cask 'klayout' do
  version '0.24.10'
  sha256 'a2097dd73f8bbdeb4297f1fdaba01635894941ae1b3c376e625948171061d6d6'

  # klayout.org was verified as official when first introduced to the cask
  url "http://www.klayout.org/downloads/MacOS/klayout-#{version}-MacOSX-Yosemite-1-Qt487mp.dmg.bz2"
  name 'KLayout'
  homepage 'https://www.klayout.de/'

  suite 'KLayout'

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join('KLayout').tap(&:mkpath))
  end

  uninstall pkgutil: 'klayout.de',
            quit:    'klayout.de'
end
