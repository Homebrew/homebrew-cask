cask 'appdelete' do
  version '4.3'
  sha256 '2db0faa7ceb555bf47a1f76e8c612b714348f69c5d36d4f680909d0453785e32'

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast 'http://www.reggieashworth.com/AD4Appcast.xml',
          checkpoint: '039ba2b891d27d76418cd30aff65248ef2766d25d16fee695cb721e28e2ec67a'
  name 'AppDelete'
  homepage 'http://www.reggieashworth.com/appdelete'

  app 'AppDelete.app'
end
