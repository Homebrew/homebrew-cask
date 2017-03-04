cask 'nodebox' do
  version '3.0.45'
  sha256 '076c35226af46fc3a5c99488cef642cd857c4a7c32ce23ac7b2ea2ee5e8a687d'

  url "https://secure.nodebox.net/downloads/NodeBox-#{version}.zip"
  appcast 'https://www.nodebox.net/node/release-notes.html',
          checkpoint: '6294533c26f1851752ebdc9eef6d637d241dacac9f4b83cd06d989c6991d3230'
  name 'NodeBox'
  homepage 'https://www.nodebox.net/node/'

  app 'NodeBox.app'
end
