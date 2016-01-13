cask 'mention' do
  version :latest
  sha256 :no_check

  url 'https://en.mention.com/downloads/mac/mention.dmg'
  appcast 'https://web.mention.com/uploads/appcast-mention.xml',
          :checkpoint => '35cd1aa9dfff04fc5b0252496eb603992623c0f7c983b4b6c98b7f345d38c2d5'
  name 'Mention'
  homepage 'https://en.mention.com/'
  license :gratis

  app 'Mention.app'
end
