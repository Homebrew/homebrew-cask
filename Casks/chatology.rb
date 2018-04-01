cask 'chatology' do
  version '1.1.3'
  sha256 'c00918bc330bcdfd385f006e624dabfc98bce2815b21b4d44d1b64a2fa9e343b'

  url "http://cdn.flexibits.com/Chatology_#{version}.zip"
  appcast 'https://flexibits.com/chatology/appcast.php',
          checkpoint: '9f246d374e887d6252a0c0092286dc86a69844e80609b0cb26e21e27f4220318'
  name 'Chatology'
  homepage 'https://flexibits.com/chatology'

  app 'Chatology.app'
end
