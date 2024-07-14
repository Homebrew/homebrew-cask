cask "pingmenu" do
  version "1.3,2"
  sha256 :no_check

  url "https://github.com/kalleboo/PingMenu/raw/master/PingMenu.app.zip"
  name "PingMenu"
  desc "Utility that shows the current network latency in the menu bar"
  homepage "https://github.com/kalleboo/PingMenu"

  deprecate! date: "2024-07-14", because: :unmaintained

  app "PingMenu.app"

  caveats do
    requires_rosetta
  end
end
