cask :v1 => 'ember' do
  version :latest
  sha256 :no_check

  url 'http://realmacsoftware.com/redirects/ember/direct'
  name 'Ember'
  homepage 'http://realmacsoftware.com/ember'
  license :commercial

  app 'Ember.app'
end
