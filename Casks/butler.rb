cask 'butler' do
  version '4.1.20'
  sha256 '067f39107d7b761f19216266fcea8109ddd3f666f31bab09651248d5414b5a9a'

  url 'https://manytricks.com/download/butler'
  appcast 'http://manytricks.com/butler/butlercast.xml',
          checkpoint: 'd1174d6d7f7908cc657b52024197057f6eb5e4d63f332329703658ff315c04a5'
  name 'Butler'
  homepage 'https://manytricks.com/butler/'
  license :commercial

  auto_updates true

  app 'Butler.app'
end
