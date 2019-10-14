cask 'klayout' do
  version '0.25.9,5124'
  sha256 '3fbf0e31ecf1fea539eb6af05b120787d67e3f832af77d6e16dd1c00e4cdfbbb'

  # klayout.org was verified as official when first introduced to the cask
  url "https://www.klayout.org/downloads/MacOS/klayout-#{version.before_comma}-macOS-Mojave-1-Qt#{version.after_comma}mp.dmg"
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
