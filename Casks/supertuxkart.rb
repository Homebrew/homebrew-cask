cask 'supertuxkart' do
  version '1.0'
  sha256 '20684fd46756ac941f99e2e19578818a92ebf9cf8abce58bb1ea878363cccf96'

  # sourceforge.net/supertuxkart was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/supertuxkart/SuperTuxKart-#{version}-mac.zip"
  appcast 'https://supertuxkart.net/Download'
  name 'SuperTuxKart'
  homepage 'https://supertuxkart.net/Main_Page'

  app 'SuperTuxKart.app'
end
