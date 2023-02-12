cask "nifty" do
  version "3.71.3"
  sha256 :no_check

  url "https://niftypm.com/apps/Nifty.dmg"
  name "Nifty"
  desc "Client for the Nifty project management platform"
  homepage "https://niftypm.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Nifty.app"
end
