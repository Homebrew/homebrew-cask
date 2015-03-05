cask :v1 => 'flash-decompiler-trillix' do
  version :latest
  sha256 :no_check

  url 'http://www.flash-decompiler.com/download/flash_decompiler.dmg'
  appcast 'http://www.eltima.com/download/fd-mac-update/fd-mac.xml'
  homepage 'http://www.flash-decompiler.com/mac.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Flash Decompiler Trillix.app'
end
