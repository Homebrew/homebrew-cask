cask 'atext' do
  version '2.19'
  sha256 'ce8442b3e10184247176265855be32714b452b9059ffb7d6fb51a49ba00f9a5f'

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml',
          checkpoint: '4bc3e356af5eebfd35174c60d470a8cde0029b937678edf9a14d5af147d505cc'
  name 'aText'
  homepage 'https://www.trankynam.com/atext/'

  app 'aText.app'
end
