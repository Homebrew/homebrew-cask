cask 'activedock' do
  version '1.56'
  sha256 '5c560b8da108a0152cb96abf139d48c811da4ea501fc7fe27edbcd93001d5f1b'

  url 'https://noteifyapp.com/download/ActiveDock.dmg'
  appcast 'https://macplus-software.com/downloads/ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :high_sierra'

  app 'ActiveDock.app'
end
