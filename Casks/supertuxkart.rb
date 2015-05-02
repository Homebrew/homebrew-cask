cask :v1 => 'supertuxkart' do
  version '0.8.1'
  sha256 'e3205788a42dd830cc1fb2deb100e305bd247d730ddd53bbd9e6601ea0e2a0d0'

  url "http://downloads.sourceforge.net/sourceforge/supertuxkart/supertuxkart-#{version}-osx.dmg"
  name 'SuperTuxKart'
  homepage 'http://supertuxkart.sourceforge.net'
  license :gpl

  app 'Supertuxkart.app'
end
