cask 'flash-decompiler-trillix' do
  version '5.3.1301'
  sha256 '4b171caa91284198478f937db6c7e53bd9caba968750807c5ca1b0dd0425f796'

  # eltima.com is the official download host per the appcast feed
  url "http://www.eltima.com/download/fd-mac-update/flash_decompiler_#{version}.dmg"
  # eltima.com verified as official when first introduced to the cask
  appcast 'http://www.eltima.com/download/fd-mac-update/fd-mac.xml',
          checkpoint: '78c0a13b8ac9358a1a1c29d0198ac13ad2674839b923126d13f3135479703610'
  name 'Flash Decompiler Trillix'
  homepage 'http://www.flash-decompiler.com/mac.html'
  license :commercial

  app 'Flash Decompiler Trillix.app'
end
