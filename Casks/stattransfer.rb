class StatTransfer < Cask
  version :latest
  sha256 :no_check

  url "http://www.stattransfer.com/downloads/stdemo.dmg"
  homepage 'https://stattransfer.com/'
  license :commercial

  pkg 'st_installer_v12.pkg'
end
