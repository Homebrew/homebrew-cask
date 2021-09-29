cask "supertuxkart" do
  version "1.3"
  sha256 "2b1911cd782b0ac96d66c008c90e23a72720bc865176376220d1c297ab67ad22"

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
