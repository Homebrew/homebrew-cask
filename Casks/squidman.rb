cask :v1 => 'squidman' do
  version '3.51'
  sha256 '0bbbe1c8f26902450e62fe47e17f68f278b033355311ef295d52951feb3b6820'

  url "http://squidman.net/resources/downloads/SquidMan#{version}.dmg"
  homepage 'http://squidman.net/squidman/'
  license :unknown

  app 'SquidMan.app'
end
