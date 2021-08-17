cask "semulov" do
  version "2.4.1"
  sha256 :no_check

  url "https://kainjow.com/downloads/Semulov.zip"
  name "Semulov"
  desc "Access mounted and unmounted volumes from the menubar"
  homepage "https://kainjow.com/"

  livecheck do
    url "https://kainjow.com/updates/semulov.xml"
    strategy :sparkle
  end

  app "Semulov.app"
end
