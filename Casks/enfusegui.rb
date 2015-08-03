cask v1: 'enfusegui' do
  version '2.1.3'
  sha256 'da762b7be32b9d264ffc121b43fae4b039dc797994be50e31f448bccf0d4b908'

  url "http://software.bergmark.com/enfusegui/files/2.1/EnfuseGUI-#{version}.dmg"
  name 'EnfuseGUI'
  homepage 'http://software.bergmark.com/enfusegui/Main.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'EnfuseGUI.app'
end
