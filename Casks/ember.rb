cask :v1 => 'ember' do
  version :latest
  sha256 :no_check

  url 'http://realmacsoftware.com/redirects/ember/direct'
  homepage 'http://realmacsoftware.com/ember'
  license :unknown    # todo: improve this machine-generated value

  app 'Ember.app'
end
