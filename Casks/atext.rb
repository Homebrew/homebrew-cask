cask :v1 => 'atext' do
  version :latest
  sha256 :no_check

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  name 'aText'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml'
  homepage 'https://www.trankynam.com/atext/'
  license :commercial

  app 'aText.app'
end
