cask "clop" do
  version "2.5.1"
  sha256 "1a435099e37dd31815be5555fa42f09e4e3ed1a292539a5559083a0e1329de93"

  url "https://files.lowtechguys.com/releases/Clop-#{version}.dmg"
  name "Clop"
  desc "Image, video and clipboard optimiser"
  homepage "https://lowtechguys.com/clop/"

  livecheck do
    url "https://files.lowtechguys.com/clop/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Clop.app"

  zap trash: [
    "~/Library/Application Support/Clop",
    "~/Library/Caches/Clop",
    "~/Library/Preferences/com.lowtechguys.Clop.plist",
  ]
end
