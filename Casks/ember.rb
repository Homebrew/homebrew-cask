cask 'ember' do
  version '1.8.3'
  sha256 'cbd61a207b87a4668907b187198c62bc0b89dfdc31896cb5cbefcf95e2e8f1d1'

  url "http://downloads.realmacmedia.com/ember/ember-#{version.no_dots}.zip"
  appcast 'https://realmacsoftware.com/feeds/ember.xml',
          :sha256 => 'a23c1a75681274b6b2bc6589fe797ee258f2138fab55ac7f853b8a51652aff7c'
  name 'Ember'
  homepage 'http://realmacsoftware.com/ember'
  license :commercial

  app 'Ember.app'
end
