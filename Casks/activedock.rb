cask 'activedock' do
  version '145,1530000334'
  sha256 '27b94166fa83939fbced3a4696b56040535bbf0f3d57afa05045f9f9de90d3a0'

  # dl.devmate.com/com.sergey-gerasimenko.ActiveDock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.sergey-gerasimenko.ActiveDock/#{version.before_comma}/#{version.after_comma}/ActiveDock-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.sergey-gerasimenko.ActiveDock.xml'
  name 'ActiveDock'
  homepage 'http://www.noteifyapp.com/activedock/'

  app 'ActiveDock.app'
end
