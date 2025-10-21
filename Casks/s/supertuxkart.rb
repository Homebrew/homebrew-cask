cask "supertuxkart" do
  version "1.5"
  sha256 "3eaf9169f1b17e63f626a59d08407fbabb5f054767695ad190d9a083f9e2c98f"

  url "https://github.com/supertuxkart/stk-code/releases/download/#{version}/SuperTuxKart-#{version}-mac.zip",
      verified: "github.com/supertuxkart/stk-code/"
  name "SuperTuxKart"
  desc "Kart racing game"
  homepage "https://supertuxkart.net/Main_Page"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "SuperTuxKart.app"

  zap trash: [
    "~/Library/Application Support/SuperTuxKart",
    "~/Library/Saved Application State/net.sourceforge.supertuxkart.savedState",
  ]
end
