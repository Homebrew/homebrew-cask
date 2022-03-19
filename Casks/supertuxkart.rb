cask "supertuxkart" do
  version "1.3"
  sha256 "50d24b00dbe009003ae3ba1e7a2cfea2b1e998ac762bee9382acef43e490fea5"

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

  zap trash: [
    "~/Library/Application Support/SuperTuxKart",
    "~/Library/Saved Application State/net.sourceforge.supertuxkart.savedState",
  ]
end
