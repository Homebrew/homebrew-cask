cask :v1 => 'atext' do
  version :latest
  sha256 :no_check

  url 'http://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'http://www.trankynam.com/atext/aText-Appcast.xml'
  homepage 'http://www.trankynam.com/atext/'
  license :commercial

  app 'aText.app'
end
