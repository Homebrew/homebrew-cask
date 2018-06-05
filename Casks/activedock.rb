cask 'activedock' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.sergey-gerasimenko.ActiveDock/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.sergey-gerasimenko.ActiveDock/ActiveDock.zip"

  name 'ActiveDock'
  homepage 'http://www.noteifyapp.com/activedock/'

  app 'ActiveDock.app'

end
