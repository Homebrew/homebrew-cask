cask "repetier-host" do
  version "1.2.1,106"
  sha256 "87aba4161581040c2e618b66887f0c192767ce193c4cd955967d3f4f3d53422d"

  url "https://download1.repetier.com/files/host-mac/Repetier-Host-Mac_#{version.csv.first.dots_to_underscores}.dmg"
  name "Repetier-Host"
  desc "3D printing application"
  homepage "https://www.repetier.com/"

  livecheck do
    url "https://download1.repetier.com/files/host-mac/rhm-appcast.xml"
    strategy :sparkle
  end

  app "Repetier-Host Mac.app"
end
