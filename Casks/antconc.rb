cask 'antconc' do
  version '3.5.7'
  sha256 '660fb0df5376544c41bb3d7c4b4c22cd11d2d20d09e1c895cc342713089890be'

  url "https://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/AntConc.zip"
  appcast 'https://www.laurenceanthony.net/software/antconc/releases/'
  name 'AntConc'
  homepage 'https://www.laurenceanthony.net/software/antconc/'

  app 'AntConc.app'
end
