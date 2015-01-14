cask :v1 => 'cursorcerer' do
  version :latest
  sha256 :no_check

  url 'http://www.doomlaser.com/downloads/Cursorcerer.zip'
  homepage 'http://doomlaser.com/cursorcerer-hide-your-cursor-at-will/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  prefpane 'Cursorcerer.prefPane'
end
