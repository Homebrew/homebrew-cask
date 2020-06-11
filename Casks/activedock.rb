cask 'activedock' do
  version '2.0'
  sha256 '9164334af66b538c1dd1d8db01ab1b753cc18338931f02500e62270d44c3bef3'

  url 'https://noteifyapp.com/download/ActiveDock.dmg'
  appcast 'https://macplus-software.com/downloads/ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :high_sierra'

  app 'ActiveDock.app'
end
