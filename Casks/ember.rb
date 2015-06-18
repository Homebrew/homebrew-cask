cask :v1 => 'ember' do
  version :latest
  sha256 :no_check

  url 'http://realmacsoftware.com/redirects/ember/direct'
  name 'Ember'
  appcast 'http://www.realmacsoftware.com/feeds/ember.xml',
          :sha256 => '5e37758cec9f0dd8b619f8cc40a257bd1ac1635fd1b2d28e0bd651bf2864dd6d'
  homepage 'http://realmacsoftware.com/ember'
  license :commercial

  app 'Ember.app'
end
