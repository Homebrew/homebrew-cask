cask 'chatology' do
  version '1.2.2'
  sha256 'b5175e5330ad26f6a43c6be078245ad3137aa80bf766a280573f9b7ef62eb139'

  # d60ism0l33mmr.cloudfront.net was verified as official when first introduced to the cask
  url "https://d60ism0l33mmr.cloudfront.net/Chatology_#{version}.zip"
  appcast 'https://flexibits.com/chatology/appcast.php'
  name 'Chatology'
  homepage 'https://flexibits.com/chatology'

  app 'Chatology.app'
end
