class BioImageXD < Cask

  version 'latest'
  sha256 :no_check

  url http://sourceforge.net/projects/bioimagexd/files/latest/download?source=recommended
  homepage 'http://www.bioimagexd.net/'

  app BioImageXD.app
end
