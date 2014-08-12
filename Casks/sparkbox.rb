class Sparkbox < Cask
  version 'latest'
  sha256 :no_check

  url 'http://t.icyblaze.com/sblatest'
  appcast 'http://matrix.icyblaze.com/index.php/checkupdate/p/8'
  homepage 'http://www.icyblaze.com/sparkbox'

  link 'Sparkbox.app'
end
