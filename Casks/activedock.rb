cask 'activedock' do
  version '138,1528354382'
  sha256 'd7aacff9205ddf54f52be8ce4ee5840b5c2ed62fd7cb41fa90a80b0825a7eed3'

  # dl.devmate.com/com.sergey-gerasimenko.ActiveDock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.sergey-gerasimenko.ActiveDock/#{version.before_comma}/#{version.after_comma}/ActiveDock-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.sergey-gerasimenko.ActiveDock.xml',
          checkpoint: '7f6d69b7204d68153b841f7965cbd4ea42f568f3f63f35469f08502ec3675cdc'
  name 'ActiveDock'
  homepage 'http://www.noteifyapp.com/activedock/'

  app 'ActiveDock.app'
end
