class FlashDecompilerTrillix < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.flash-decompiler.com/download/flash_decompiler.dmg'
  appcast 'http://www.eltima.com/download/fd-mac-update/fd-mac.xml'
  homepage 'http://www.flash-decompiler.com/mac.html'

  link 'Flash Decompiler Trillix.app'
end
