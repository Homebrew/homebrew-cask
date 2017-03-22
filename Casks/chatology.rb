cask 'chatology' do
  version '1.1.1'
  sha256 '1867746333abce042f7306d0e1388e0454c053119d91307047f2ffca72e920e2'

  url "http://cdn.flexibits.com/Chatology_#{version}.zip"
  appcast 'https://flexibits.com/chatology/appcast.php',
          checkpoint: '81991574b1480ce01b901904abfa4a8b3ad0a99efe357f7b9fd208d181364366'
  name 'Chatology'
  homepage 'https://flexibits.com/chatology'

  app 'Chatology.app'
end
