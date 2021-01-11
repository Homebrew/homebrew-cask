cask "supertuxkart" do
  version "1.2"
  sha256 "0ce988c748f254dcf2cf441c575e4715ee578bb439a9535b045cc1a60618a2ed"

  url "https://downloads.sourceforge.net/supertuxkart/SuperTuxKart-#{version}-mac.zip",
      verified: "sourceforge.net/supertuxkart/"
  name "SuperTuxKart"
  homepage "https://supertuxkart.net/Main_Page"

  livecheck do
    url "https://supertuxkart.net/Download"
    strategy :page_match
    regex(%r{href=.*?/SuperTuxKart-(\d+(?:\.\d+)*)-mac\.zip}i)
  end

  app "SuperTuxKart.app"
end
