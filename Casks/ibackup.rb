cask 'ibackup' do
  version '7.6'
  sha256 '97e34fd79a16193161e873e2eb77c32597dedb5b63d44ed48a61c40af8aba8e2'

  url "http://www.grapefruit.ch/iBackup/versions/iBackup%20#{version.major}.x/iBackup%20#{version}.dmg"
  appcast 'http://www.grapefruit.ch/iBackup/downloads.html',
          checkpoint: '3f0bdd8f457ea60d548feda9c18e9dfedb74849470fa232dba8cb9e7dc4144a3'
  name 'iBackup'
  homepage 'http://www.grapefruit.ch/iBackup/'

  app 'iBackup.app'
end
