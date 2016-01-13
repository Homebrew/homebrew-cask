cask 'atext' do
  version :latest
  sha256 :no_check

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml',
          :checkpoint => 'cd4af0d98f5c892e6f1c152cd093f23394864034770baba0372b7eecae0d46a4'
  name 'aText'
  homepage 'https://www.trankynam.com/atext/'
  license :commercial

  app 'aText.app'
end
