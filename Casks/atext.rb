cask 'atext' do
  version :latest
  sha256 :no_check

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml',
          :sha256 => '9245a7626187141d35f981232224d720f09b7b0b990542c9374a238fae4f5c3d'
  name 'aText'
  homepage 'https://www.trankynam.com/atext/'
  license :commercial

  app 'aText.app'
end
