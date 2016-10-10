cask 'ember' do
  version '1.8.3'
  sha256 'cbd61a207b87a4668907b187198c62bc0b89dfdc31896cb5cbefcf95e2e8f1d1'

  # realmacmedia.com was verified as official when first introduced to the cask
  url "http://downloads.realmacmedia.com/ember/ember-#{version.no_dots}.zip"
  appcast 'https://realmacsoftware.com/feeds/ember.xml',
          checkpoint: '3d67f61fbc5b1bf154a4da1a28bca8dba7585456cfc16a8e89d84500343c00b8'
  name 'Ember'
  homepage 'https://realmacsoftware.com/ember'

  app 'Ember.app'
end
