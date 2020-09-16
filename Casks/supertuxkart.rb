cask "supertuxkart" do
  version "1.2"
  sha256 "0ce988c748f254dcf2cf441c575e4715ee578bb439a9535b045cc1a60618a2ed"

  # sourceforge.net/supertuxkart/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/supertuxkart/SuperTuxKart-#{version}-mac.zip"
  appcast "https://supertuxkart.net/Download"
  name "SuperTuxKart"
  homepage "https://supertuxkart.net/Main_Page"

  app "SuperTuxKart.app"
end
