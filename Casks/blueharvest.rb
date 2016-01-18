cask 'blueharvest' do
  version '6.3.4'
  sha256 '88df79e3e2602ac4d514d2e57eba587ea0decff5d4bec48becc9babc4c4b8867'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.delete('.')}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          checkpoint: '6ba6669f15d1f640560a530a8e8a435459c0d488779a171440efb5ceeb151b4d'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
