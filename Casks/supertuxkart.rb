cask 'supertuxkart' do
  version '1.1'
  sha256 'ed1783b2e3220ce3b69a88b39528c101154bdfdca10f4ff4a66d065e802334f3'

  # sourceforge.net/supertuxkart was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/supertuxkart/SuperTuxKart-#{version}-mac.zip"
  appcast 'https://supertuxkart.net/Download'
  name 'SuperTuxKart'
  homepage 'https://supertuxkart.net/Main_Page'

  app 'SuperTuxKart.app'
end
