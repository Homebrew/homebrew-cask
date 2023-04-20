cask "random-mouse-clicker" do
  version "6.1"
  sha256 :no_check

  url "https://www.murgaa.com/mac-random-mouse-clicker/download/RandomClicker.zip"
  name "Random Mouse Clicker"
  desc "Automate left, right and middle mouse button clicks"
  homepage "https://www.murgaa.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "Random Mouse Clicker by MurGaa.com.app"
end
