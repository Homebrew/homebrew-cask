cask 'kaomoji' do
  version '1.8'
  sha256 'e887e30493d87c8cef9d4b0352d0bbc82232e31e37b6b883e77422eba2987410'

  url 'http://www.kaomojiapp.com/download/Kaomoji.zip'
  appcast 'http://kaomojiapp.com/download/kaomojiupdate.xml',
          checkpoint: 'ee7867ed4bb1bfa148641764904b2664097b29cc51ca8d32fb0c956c09c3ac7e'
  name 'Kaomoji'
  homepage 'http://www.kaomojiapp.com/'
  license :freemium

  auto_updates true

  app 'Kaomoji.app'
end
