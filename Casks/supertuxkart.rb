cask "supertuxkart" do
  version "1.2"
  sha256 "0ce988c748f254dcf2cf441c575e4715ee578bb439a9535b045cc1a60618a2ed"

  url "https://github.com/supertuxkart/stk-code/releases/download/#{version}/SuperTuxKart-#{version}-mac.zip",
      verified: "github.com/supertuxkart/stk-code"
  name "SuperTuxKart"
  desc "Kart racing game"
  homepage "https://supertuxkart.net/Main_Page"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SuperTuxKart.app"
end
