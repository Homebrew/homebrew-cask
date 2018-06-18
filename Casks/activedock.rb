cask 'activedock' do
  version '141,1529309013'
  sha256 '9e0e6174a5a7fa7529396abe538e43910b1657b32697da7527e6380ff53f8a18'

  # dl.devmate.com/com.sergey-gerasimenko.ActiveDock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.sergey-gerasimenko.ActiveDock/#{version.before_comma}/#{version.after_comma}/ActiveDock-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.sergey-gerasimenko.ActiveDock.xml'
  name 'ActiveDock'
  homepage 'http://www.noteifyapp.com/activedock/'

  app 'ActiveDock.app'
end
