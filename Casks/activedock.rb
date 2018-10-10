cask 'activedock' do
  version '176,1536031893'
  sha256 'ae6f8d070c44b5db84a0df608c5852a59f4d307364470247ee0bbf27bbf1a2e1'

  # dl.devmate.com/com.sergey-gerasimenko.ActiveDock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.sergey-gerasimenko.ActiveDock/#{version.before_comma}/#{version.after_comma}/ActiveDock-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.sergey-gerasimenko.ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  app 'ActiveDock.app'
end
