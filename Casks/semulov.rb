cask "semulov" do
  version "2.6.0"
  sha256 "fc25b015251562df79c89143b2fb123fc793d780e3f1eb9990d6d5723c870dc6"

  url "https://github.com/kainjow/Semulov/releases/download/v2.6/Semulov.zip"
  name "Semulov"
  desc "Access mounted and unmounted volumes from the menubar"
  homepage "https://github.com/kainjow/Semulov"

  livecheck do
    url "https://kainjow.com/updates/semulov.xml"
    strategy :sparkle
  end

  app "Semulov.app"
end
