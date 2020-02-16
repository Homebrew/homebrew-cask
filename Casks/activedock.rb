cask 'activedock' do
  version '1.54'
  sha256 'd37db887147f9027278ee030406d5a00e72f5cb3acae390ee51f4d695911e265'

  url 'https://noteifyapp.com/download/ActiveDock.dmg'
  appcast 'https://macplus-software.com/downloads/ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :high_sierra'

  app 'ActiveDock.app'
end
