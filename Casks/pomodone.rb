cask 'pomodone' do
  version '1.5.998'
  sha256 '3c3c0cb9e4b15ed2a8a35a500633d2e2cf15da0c64fc03273a0379b442ae577d'

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name 'PomoDone'
  homepage 'https://pomodoneapp.com/'

  app 'PomoDoneApp.app'
end
