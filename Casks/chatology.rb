cask 'chatology' do
  version '1.2'
  sha256 'cff0d2a0e5b42be9ed3210d696662e83c052a85e35afce6b2b0a372cc7508f88'

  url "http://cdn.flexibits.com/Chatology_#{version}.zip"
  appcast 'https://flexibits.com/chatology/appcast.php'
  name 'Chatology'
  homepage 'https://flexibits.com/chatology'

  app 'Chatology.app'
end
