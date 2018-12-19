cask 'supertuxkart' do
  version '0.9.3'
  sha256 'b95923943e37ca3203fa1b339fce5af57f5a4d121d1c84b3d4ba84389373d05b'

  # sourceforge.net/supertuxkart was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/supertuxkart/SuperTuxKart-#{version}-osx.dmg"
  appcast 'https://sourceforge.net/projects/supertuxkart/rss?path=/SuperTuxKart'
  name 'SuperTuxKart'
  homepage 'https://supertuxkart.net/Main_Page'

  app 'SuperTuxKart.app'
end
