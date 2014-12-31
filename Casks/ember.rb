cask :v1 => 'ember' do
  version :latest
  sha256 :no_check

  url 'http://realmacsoftware.com/redirects/ember/direct'
  homepage 'http://realmacsoftware.com/ember'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Ember.app'
end
