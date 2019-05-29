cask 'klayout' do
  version '0.25.7'
  sha256 'f3b0d2899496cf8166a296a6ad917e63475ab60a14915947153bac15ee1e5f0a'

  # klayout.org was verified as official when first introduced to the cask
  url "https://www.klayout.org/downloads/MacOS/klayout-#{version}-macOS-Mojave-1-Qt5120mp.dmg"
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
