cask 'chatology' do
  version '1.2.3'
  sha256 'e6c5b5563c692c004b2590ad6956c36c3a8b78a3fcdb5f16d724c82f08f22ab3'

  # d60ism0l33mmr.cloudfront.net was verified as official when first introduced to the cask
  url "https://d60ism0l33mmr.cloudfront.net/Chatology_#{version}.zip"
  appcast 'https://flexibits.com/chatology/appcast.php'
  name 'Chatology'
  homepage 'https://flexibits.com/chatology'

  app 'Chatology.app'
end
