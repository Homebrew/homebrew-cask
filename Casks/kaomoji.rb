cask 'kaomoji' do
  version :latest
  sha256 :no_check

  url 'http://www.kaomojiapp.com/download/Kaomoji.zip'
  appcast 'http://kaomojiapp.com/download/kaomojiupdate.xml',
          checkpoint: 'ee7867ed4bb1bfa148641764904b2664097b29cc51ca8d32fb0c956c09c3ac7e'
  name 'Kaomoji'
  homepage 'http://www.kaomojiapp.com/'
  license :freemium

  auto_updates true

  app 'Kaomoji.app'
end
