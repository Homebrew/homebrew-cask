cask 'atext' do
  version '2.19'
  sha256 'ce8442b3e10184247176265855be32714b452b9059ffb7d6fb51a49ba00f9a5f'

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml',
          checkpoint: 'cd4af0d98f5c892e6f1c152cd093f23394864034770baba0372b7eecae0d46a4'
  name 'aText'
  homepage 'https://www.trankynam.com/atext/'
  license :commercial

  app 'aText.app'
end
