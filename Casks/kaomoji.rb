cask 'kaomoji' do
  version '1.9'
  sha256 '04f7e6dc47b469eb90a74d5c569959f2218cc8f3b354edf85117b9f52574b071'

  # kaomojiformac.github.io was verified as official when first introduced to the cask
  url 'https://kaomojiformac.github.io/download/Kaomoji.zip'
  appcast 'https://kaomojiformac.github.io/download/kaomojiupdate.xml',
          checkpoint: 'c80344948d450636c79b58d95d7397f42cdb337e0130b5b9f85f5038f4505af9'
  name 'Kaomoji'
  homepage 'http://www.kaomojiapp.com/'

  auto_updates true

  app 'Kaomoji.app'
end
