cask 'squidman' do
  version '3.6'
  sha256 '26544fbad48dc29dd7ea154cd48e02fa08f673bda3ff173557b8f04f1c334e43'

  url "http://squidman.net/resources/downloads/SquidMan#{version}.dmg"
  name 'SquidMan'
  homepage 'http://squidman.net/squidman/'
  license :gratis

  app 'SquidMan.app'
end
