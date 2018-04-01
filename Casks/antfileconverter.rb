cask 'antfileconverter' do
  version '1.2.1'
  sha256 'd981972789d48453ae0289c96f2b9679269114a4e6435ebf105e03d8837915d9'

  url "http://www.laurenceanthony.net/software/antfileconverter/releases/AntFileConverter#{version.no_dots}/AntFileConverter.zip"
  appcast 'http://www.laurenceanthony.net/software/antfileconverter/releases/',
          checkpoint: '412bc6b08320c2fd9dbc25a4929e61145a0f673a0bcbaf0df693d81794bfeb37'
  name 'AntFileConverter'
  homepage 'http://www.laurenceanthony.net/software/antfileconverter/'

  app 'AntFileConverter.app'
end
