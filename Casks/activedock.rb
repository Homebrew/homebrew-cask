cask 'activedock' do
  version '2.2,2021'
  sha256 '80de86553afe8b527d8dd4b6734c8ef8c9d21a5bf172617c12596a5e52f47b62'

  url 'https://noteifyapp.com/download/ActiveDock.dmg'
  appcast 'https://macplus-software.com/downloads/ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :high_sierra'

  app "ActiveDock #{version.before_comma.major}.app"
end
