cask "semulov" do
  version "2.4.1"
  sha256 :no_check

  url "https://www.kainjow.com/downloads/Semulov.zip"
  name "Semulov"
  homepage "https://www.kainjow.com/"

  livecheck do
    url "https://kainjow.com/updates/semulov.xml"
    strategy :sparkle
  end

  app "Semulov.app"
end
