cask "flash-decompiler-trillix" do
  version "5.3.1301"
  sha256 "5b1313197c1e311db7aefc1764785187a5f5fd39ea5aa689587761ff42232d9e"

  # cdn.eltima.com/ was verified as official when first introduced to the cask
  url "https://cdn.eltima.com/download/flash_decompiler.dmg"
  appcast "https://cdn.eltima.com/download/fd-mac-update/fd-mac.xml"
  name "Flash Decompiler Trillix"
  homepage "http://www.flash-decompiler.com/mac.html"

  app "Flash Decompiler Trillix.app"
end
