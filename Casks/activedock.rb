cask 'activedock' do
  version '1.60'
  sha256 'bdbd55b5914bb858e87a590328b8d0c075c984ec007c71ae42d190909d52e22e'

  url 'https://noteifyapp.com/download/ActiveDock.dmg'
  appcast 'https://macplus-software.com/downloads/ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :high_sierra'

  app 'ActiveDock.app'
end
