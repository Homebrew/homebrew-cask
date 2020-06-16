cask 'activedock' do
  version '2.0,2001'
  sha256 '141e78798a46a169ce7cec5b98ad51f99a0b41711d3db29cbe01632b4212187b'

  url 'https://noteifyapp.com/download/ActiveDock.dmg'
  appcast 'https://macplus-software.com/downloads/ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :high_sierra'

  app "ActiveDock #{version.before_comma}.app"
end
