cask 'kaomoji' do
  version '1.9.13'
  sha256 'efb7457d3f41bd95c58668ed15e7553f67fc1d96ab2bc2680e334bcfd838bd3c'

  # kaomojiformac.github.io was verified as official when first introduced to the cask
  url 'https://kaomojiformac.github.io/download/Kaomoji.zip'
  appcast 'https://kaomojiformac.github.io/download/kaomojiupdate.xml',
          checkpoint: '0a5b54f892c7389dfead42f4941816dc028b909599d6ba4306137c69f9bdd1a8'
  name 'Kaomoji'
  homepage 'http://www.kaomojiapp.com/'

  auto_updates true

  app 'Kaomoji.app'
end
