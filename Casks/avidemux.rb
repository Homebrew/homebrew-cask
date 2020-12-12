cask "avidemux" do
  if MacOS.version <= :mojave
    version "2.7.4"
    sha256 "a5c5028ecc954b6658b4c0e6b04c1c186c42a12530e66a5379f51fe7a3ebfcd8"

    # sourceforge.net/avidemux/ was verified as official when first introduced to the cask
    url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Mojava_64Bits_Qt5.dmg"
  else
    version "2.7.6"
    sha256 "91a4d9757173c261eac01a79019aed38a1185951ff2b67352e6ecbac2ea5f56f"

    # sourceforge.net/avidemux/ was verified as official when first introduced to the cask
    url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Catalina_64Bits_Qt5.dmg"
  end

  appcast "https://sourceforge.net/projects/avidemux/rss?path=/avidemux"
  name "Avidemux"
  desc "Open-source cross-platform video editor"
  homepage "https://www.avidemux.org/"

  app "Avidemux_#{version}.app"
end
