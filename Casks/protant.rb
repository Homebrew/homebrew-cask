cask 'protant' do
  version '1.2.1'
  sha256 'ae3d9cb279723ec7ce4580ef16a43fd30745b0b3b196c7ba92e5aff713e086c2'

  url "http://www.laurenceanthony.net/software/protant/releases/ProtAnt#{version.no_dots}/ProtAnt.zip"
  appcast 'http://www.laurenceanthony.net/software/protant/releases/',
          checkpoint: 'd0b65e2a685fe67264776b409b16234414492ad722e4757f8f40b7b473190b1d'
  name 'ProtAnt'
  homepage 'http://www.laurenceanthony.net/software/protant/'

  app 'ProtAnt.app'
end
