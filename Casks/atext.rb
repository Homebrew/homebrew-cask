cask 'atext' do
  version '2.22'
  sha256 '316a86e63e8f6cd87a545185a0aa7033ce426ca707d391d9dc18d69ec8a3461d'

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml',
          checkpoint: 'dcceb0392ef64634fd7aae8cbfd9813e8cbd0bc0955ee3959e7f15826274ed12'
  name 'aText'
  homepage 'https://www.trankynam.com/atext/'

  app 'aText.app'
end
