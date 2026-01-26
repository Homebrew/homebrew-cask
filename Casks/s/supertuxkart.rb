cask "supertuxkart" do
  version "1.5"
  sha256 "c266acdb8a63a3fe30f52652d9b749f5beba4abeb9e54382fbb934b00c53b303"

  url "https://github.com/supertuxkart/stk-code/releases/download/#{version}/SuperTuxKart-#{version}-mac-signed.zip",
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
