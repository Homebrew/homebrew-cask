cask 'activedock' do
  version '2.0,2004'
  sha256 'a4e05dccd1b8e85f299cce56968679f936b15b1f22d56f6468f1c305aa605137'

  url 'https://noteifyapp.com/download/ActiveDock.dmg'
  appcast 'https://macplus-software.com/downloads/ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :high_sierra'

  app "ActiveDock #{version.before_comma.major}.app"
end
