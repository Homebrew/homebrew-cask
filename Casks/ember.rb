cask 'ember' do
  version '1.8.3'
  sha256 'cbd61a207b87a4668907b187198c62bc0b89dfdc31896cb5cbefcf95e2e8f1d1'

  url "http://downloads.realmacmedia.com/ember/ember-#{version.no_dots}.zip"
  appcast 'http://realmacsoftware.com/feeds/ember.xml',
          :sha256 => '37fd752918a4a295e9bf07a2b4634a61bac1f07123585a4a35c8ec988ac354c1'
  name 'Ember'
  homepage 'http://realmacsoftware.com/ember'
  license :commercial

  app 'Ember.app'
end
