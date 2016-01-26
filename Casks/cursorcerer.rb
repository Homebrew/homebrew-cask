cask 'cursorcerer' do
  version :latest
  sha256 :no_check

  url 'http://www.doomlaser.com/downloads/Cursorcerer.zip'
  name 'Cursorcerer'
  homepage 'http://doomlaser.com/cursorcerer-hide-your-cursor-at-will/'
  license :gratis

  prefpane 'Cursorcerer.prefPane'
end
