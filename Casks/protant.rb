cask 'protant' do
  version '1.2.1'
  sha256 'ae3d9cb279723ec7ce4580ef16a43fd30745b0b3b196c7ba92e5aff713e086c2'

  url "https://www.laurenceanthony.net/software/protant/releases/ProtAnt#{version.no_dots}/ProtAnt.zip"
  appcast 'https://www.laurenceanthony.net/software/protant/releases/'
  name 'ProtAnt'
  homepage 'https://www.laurenceanthony.net/software/protant/'

  app 'ProtAnt.app'
end
