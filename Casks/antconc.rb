cask 'antconc' do
  version '3.5.7'
  sha256 '660fb0df5376544c41bb3d7c4b4c22cd11d2d20d09e1c895cc342713089890be'

  url "http://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/AntConc.zip"
  appcast 'http://www.laurenceanthony.net/software/antconc/releases/',
          checkpoint: '9fbd6dab4bdc22540c9d29b8d542c5f04079914111d99f0ee11352bb2351ab0f'
  name 'AntConc'
  homepage 'http://www.laurenceanthony.net/software/antconc/'

  app 'AntConc.app'
end
