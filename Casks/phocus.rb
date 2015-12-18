cask 'phocus' do
  version '2.8.4'
  sha256 'f82a77f869afa1c130b42741fc8df64735d733325d1c4d78cc9530da5628a615'

  url "http://static.hasselblad.com/2014/12/Phocus-#{version}.dmg"
  name 'Hasselblad Phocus'
  homepage 'http://www.hasselblad.com/software/phocus'
  license :gratis

  app 'Phocus.app'
end
