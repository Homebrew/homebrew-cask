cask 'ibackup' do
  version '7.6'
  sha256 '97e34fd79a16193161e873e2eb77c32597dedb5b63d44ed48a61c40af8aba8e2'

  url "http://www.grapefruit.ch/iBackup/versions/iBackup%20#{version.major}.x/iBackup%20#{version}.dmg"
  appcast 'http://www.grapefruit.ch/iBackup/downloads.html',
          checkpoint: '482b10adc3d2409583cbc9325863abe6d563b9d933e248cc44f504386da73794'
  name 'iBackup'
  homepage 'http://www.grapefruit.ch/iBackup/'

  app 'iBackup.app'
end
