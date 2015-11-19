cask :v1 => 'ember' do
  version '1.8.3'
  sha256 'cbd61a207b87a4668907b187198c62bc0b89dfdc31896cb5cbefcf95e2e8f1d1'

  url "http://downloads.realmacmedia.com/ember/ember-#{version.delete('.')}.zip"
  name 'Ember'
  appcast 'http://www.realmacsoftware.com/feeds/ember.xml',
          :sha256 => '5e37758cec9f0dd8b619f8cc40a257bd1ac1635fd1b2d28e0bd651bf2864dd6d'
  homepage 'http://realmacsoftware.com/ember'
  license :commercial

  app 'Ember.app'
end
