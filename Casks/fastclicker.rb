cask "fastclicker" do
  version "1.1"
  sha256 :no_check

  url "http://www.advanced-mouse-auto-clicker.com/setup/FastClicker.zip"
  name "FastClicker"
  desc "Auto clicker and mouse automation utility"
  homepage "http://www.advanced-mouse-auto-clicker.com/mac-auto-clicker.html"

  app "FastClicker.app"

  caveats do
    discontinued
  end
end
