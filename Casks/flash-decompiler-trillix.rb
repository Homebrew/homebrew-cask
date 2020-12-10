cask "flash-decompiler-trillix" do
  version "5.3.1301"
  sha256 :no_check

  # cdn.eltima.com/ was verified as official when first introduced to the cask
  url "https://cdn.eltima.com/download/flash_decompiler.dmg"
  appcast "https://cdn.eltima.com/download/fd-mac-update/fd-mac.xml"
  name "Flash Decompiler Trillix"
  homepage "http://www.flash-decompiler.com/mac.html"

  app "Flash Decompiler Trillix.app"
end
