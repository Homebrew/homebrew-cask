cask "simplefloatingclock" do
  version "1.8"
  sha256 :no_check

  url "http://www.splook.com/Software/distrib/sfc.zip"
  name "Simple Floating Clock"
  homepage "http://www.splook.com/Software/Simple_Floating_Clock.html"

  livecheck do
    url :homepage
    regex(/Simple\s+Floating\s+Clock\s+(\d(?:\.\d+)+)/i)
  end

  app "Simple Floating Clock/SimpleFloatingClock.app"
end
