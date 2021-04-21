cask "leap-motion" do
  version "2.3.1"
  sha256 :no_check

  url "https://warehouse.leapmotion.com/apps/4184/download"
  name "Leap Motion"
  homepage "https://www.leapmotion.com/setup"

  livecheck do
    url "https://warehouse.leapmotion.com/apps/4184/download"
    strategy :header_match
  end

  pkg "Leap Motion.pkg"

  uninstall script: "/Applications/Leap Motion.app/Contents/MacOS/uninstall"
end
