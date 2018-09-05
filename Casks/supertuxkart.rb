cask 'supertuxkart' do
  version '0.9.2'
  sha256 'ad0dc0169098c340cf4be203ce6038f4bbe8b7fe616c2af14690a7b30595a202'

  # sourceforge.net/supertuxkart was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/supertuxkart/SuperTuxKart-#{version}-osx.dmg"
  appcast 'https://sourceforge.net/projects/supertuxkart/rss?path=/SuperTuxKart'
  name 'SuperTuxKart'
  homepage 'https://supertuxkart.net/Main_Page'

  app 'SuperTuxKart.app'
end
