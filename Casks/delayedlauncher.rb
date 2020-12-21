cask "delayedlauncher" do
  version "2.2.1"
  sha256 :no_check

  url "https://www.taoeffect.com/delayedlauncher/DelayedLauncher.zip"
  name "DelayedLauncher"
  homepage "https://www.taoeffect.com/blog/2010/03/delayedlauncher-2-0/"

  livecheck do
    url "https://www.taoeffect.com/delayedlauncher/appcast.xml"
    strategy :sparkle
  end

  app "DelayedLauncher.app"
end
