cask 'chatology' do
  version '1.1.3'
  sha256 'c00918bc330bcdfd385f006e624dabfc98bce2815b21b4d44d1b64a2fa9e343b'

  url "http://cdn.flexibits.com/Chatology_#{version}.zip"
  appcast 'https://flexibits.com/chatology/appcast.php'
  name 'Chatology'
  homepage 'https://flexibits.com/chatology'

  app 'Chatology.app'
end
