cask 'blueharvest' do
  version '6.3.4'
  sha256 '88df79e3e2602ac4d514d2e57eba587ea0decff5d4bec48becc9babc4c4b8867'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.delete('.')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          :sha256 => '56f7065fa64fda169e254d3dfa342cbce80ca903e9452c454eb7cfad10340e53'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
