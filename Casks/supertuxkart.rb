cask :v1 => 'supertuxkart' do
  version '0.9.1'
  sha256 '9f68a7db3d442b3e53a8583e98201151b71d97db7f68dc77995571a93ba747ae'

  url "http://downloads.sourceforge.net/sourceforge/supertuxkart/SuperTuxKart-#{version}.dmg"
  name 'SuperTuxKart'
  homepage 'http://supertuxkart.sourceforge.net'
  license :gpl

  app 'Supertuxkart.app'
end
