cask "nifty" do
  version "3.35.10"
  sha256 :no_check

  url "https://niftypm.com/apps/Nifty.dmg"
  name "Nifty"
  homepage "https://niftypm.com/"

  livecheck do
    skip "unversioned URL"
  end

  app "Nifty.app"
end
