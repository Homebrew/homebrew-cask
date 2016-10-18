cask 'supertuxkart' do
  version '0.9.2'
  sha256 'ad0dc0169098c340cf4be203ce6038f4bbe8b7fe616c2af14690a7b30595a202'

  # sourceforge.net/supertuxkart was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/supertuxkart/SuperTuxKart-#{version}-osx.dmg"
  appcast 'https://sourceforge.net/projects/supertuxkart/rss?path=/SuperTuxKart',
          checkpoint: '6e14ee842c36c4476dc38cbcc4996d6632f5bf8a4bf796a69d108441d810fdb4'
  name 'SuperTuxKart'
  homepage 'https://supertuxkart.net'

  app 'SuperTuxKart.app'
end
