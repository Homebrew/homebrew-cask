cask "supertuxkart" do
  version "1.4"
  sha256 "21a7fb34132036c5810a8b48527513981d98d09d27d33b15e2f428bdc492c89d"

  url "https://github.com/supertuxkart/stk-code/releases/download/#{version}/SuperTuxKart-#{version}-mac.zip",
      verified: "github.com/supertuxkart/stk-code/"
  name "SuperTuxKart"
  desc "Kart racing game"
  homepage "https://supertuxkart.net/Main_Page"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SuperTuxKart.app"

  zap trash: [
    "~/Library/Application Support/SuperTuxKart",
    "~/Library/Saved Application State/net.sourceforge.supertuxkart.savedState",
  ]
end
