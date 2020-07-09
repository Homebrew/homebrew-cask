cask 'activedock' do
  version '2.1,2010'
  sha256 'cdc029195d6cdbdafb62f3a78c257f697a0185ac0d1d08960dc82e5eaf3b21c1'

  url 'https://noteifyapp.com/download/ActiveDock.dmg'
  appcast 'https://macplus-software.com/downloads/ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :high_sierra'

  app "ActiveDock #{version.before_comma.major}.app"
end
