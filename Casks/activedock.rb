cask 'activedock' do
  version '140,1528723167'
  sha256 '9d43460823fd7ba1e8a3c35a617148804ccd373fe5e588706a2367425555d278'

  # dl.devmate.com/com.sergey-gerasimenko.ActiveDock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.sergey-gerasimenko.ActiveDock/#{version.before_comma}/#{version.after_comma}/ActiveDock-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.sergey-gerasimenko.ActiveDock.xml'
  name 'ActiveDock'
  homepage 'http://www.noteifyapp.com/activedock/'

  app 'ActiveDock.app'
end
