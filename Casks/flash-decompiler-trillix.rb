cask "flash-decompiler-trillix" do
  version "5.3.1301"
  sha256 :no_check

  url "https://cdn.eltima.com/download/flash_decompiler.dmg",
      verified: "cdn.eltima.com/"
  name "Flash Decompiler Trillix"
  homepage "https://www.flash-decompiler.com/mac.html"

  livecheck do
    url "https://cdn.eltima.com/download/fd-mac-update/fd-mac.xml"
    strategy :sparkle
  end

  app "Flash Decompiler Trillix.app"
end
