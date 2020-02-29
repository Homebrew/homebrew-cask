cask 'activedock' do
  version '1.54'
  sha256 '95206e53fa4d62d8ad0b9eb3cd42c1ac7a552bc0e2a2e49d345c631ea19a1890'

  url 'https://noteifyapp.com/download/ActiveDock.dmg'
  appcast 'https://macplus-software.com/downloads/ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :high_sierra'

  app 'ActiveDock.app'
end
