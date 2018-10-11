cask 'activedock' do
  version '178,1536924717'
  sha256 '1b4cfb4a1cff4322f3bdd4f604b6de68e794f4385d001b2ed8daf91e25519446'

  # dl.devmate.com/com.sergey-gerasimenko.ActiveDock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.sergey-gerasimenko.ActiveDock/#{version.before_comma}/#{version.after_comma}/ActiveDock-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.sergey-gerasimenko.ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  app 'ActiveDock.app'
end
